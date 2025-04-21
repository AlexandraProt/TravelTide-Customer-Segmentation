# merge_user_data.py
# Script to combine user segmentation data with behavior and summary metrics

import pandas as pd

# Load source datasets
segment_summary_df = pd.read_csv("data/segment_summary_table.csv")
final_segmentation_df = pd.read_csv("data/final_user_segmentation_with_metrics.csv")
query_results_df = pd.read_csv("data/query_4.csv")

# Merge segmentation with behavior metrics
merged_df = pd.merge(final_segmentation_df, query_results_df, on='user_id', how='left')

# Merge with group-level summary (traveler_type)
merged_full_df = pd.merge(
    merged_df,
    segment_summary_df,
    on='traveler_type',
    how='left',
    suffixes=('', '_group_avg')
)

# Save final merged dataset to CSV
merged_full_df.to_csv("data/user_behavior_metrics_combined.csv", index=False)

print("✅ Data merged and saved to data/user_behavior_metrics_combined.csv")

