.class public Lcom/android/settings/applications/DataSaverController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DataSaverController.java"


# static fields
.field static final KEY_DATA_SAVER:Ljava/lang/String; = "data_saver"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const-string v0, "data_saver"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/settings/applications/DataSaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x2

    .line 36
    :goto_0
    return v0
.end method
