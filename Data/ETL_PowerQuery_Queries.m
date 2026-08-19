// =========================================================================
// ENTERPRISE PEOPLE ANALYTICS - ETL PIPELINE (POWER QUERY M-CODE)
// Target: HRIS Dataset Cleansing, Standardization & Type Binding
// =========================================================================

let
    // 1. Ingestion Layer - Dynamically reading raw CSV/Excel export
    Source = Csv.Document(
        File.Contents("C:\YourPath\DATASET RRHH.csv"),
        [Delimiter=",", Columns=15, Encoding=1252, QuoteStyle=QuoteStyle.None]
    ),
    
    // 2. Structural Transformation - Promoting first row as header
    #"Promoted Headers" = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    
    // 3. Schema & Type Enforcement - Bounding data types for performance
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{
        {"Employee_ID", type text},
        {"Age", Int64.Type},
        {"Department", type text},
        {"Job_Role", type text},
        {"Tenure_Years", type number},
        {"Performance_Rating", Int64.Type},
        {"PayZone", type text},
        {"Status", type text},
        {"Termination_Type", type text}
    }),
    
    // 4. Data Cleansing & Normalization - Handling NULL values & whitespaces
    #"Trimmed Text" = Table.TransformValueTypes(#"Changed Type", {}, Text.Clean),
    #"Replaced Null Status" = Table.ReplaceValue(#"Trimmed Text", null, "Active", Replacer.ReplaceValue, {"Status"}),
    
    // 5. Derived Logic - Performance Calibration Tagging
    #"Added Calibration Tier" = Table.AddColumn(#"Replaced Null Status", "Evaluation_Category", each 
        if [Performance_Rating] >= 4 then "High Performer"
        else if [Performance_Rating] = 3 then "Fully Meets (Centrality Zone)"
        else "Needs Improvement", type text
    )
in
    #"Added Calibration Tier"