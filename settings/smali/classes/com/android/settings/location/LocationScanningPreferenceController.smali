.class public Lcom/android/settings/location/LocationScanningPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LocationScanningPreferenceController.java"


# static fields
.field static final KEY_LOCATION_SCANNING:Ljava/lang/String; = "location_scanning"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const-string v0, "location_scanning"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/settings/location/LocationScanningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x2

    .line 37
    :goto_0
    return v0
.end method
