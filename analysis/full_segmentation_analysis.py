import pandas as pd

# Load segmentation data
df = pd.read_csv("final_user_segmentation_with_metrics.csv")

# Группировка по типу путешественника с расчётом метрик
summary = df.groupby("traveler_type").agg({
    "user_id": "count",
    "user_age": "mean",
    "has_children": "mean",
    "money_spent_hotel": "mean",
    "avg_km_flown": "mean",
    "time_after_booking": "mean",
    "num_trips": "mean"
}).rename(columns={
    "user_id": "num_users",
    "user_age": "avg_age",
    "has_children": "share_with_children",
    "money_spent_hotel": "avg_spent_hotel",
    "avg_km_flown": "avg_km_flown",
    "time_after_booking": "avg_days_before_trip",
    "num_trips": "avg_num_trips"
}).round(2).reset_index()

print(summary)

