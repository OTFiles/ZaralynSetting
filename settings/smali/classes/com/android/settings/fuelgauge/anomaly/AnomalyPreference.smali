.class public Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;
.super Landroid/support/v7/preference/Preference;
.source "AnomalyPreference.java"


# instance fields
.field private mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/Anomaly;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anomaly"    # Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    .line 15
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    .line 18
    if-eqz p2, :cond_0

    .line 19
    iget-object v0, p2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public getAnomaly()Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    return-object v0
.end method
