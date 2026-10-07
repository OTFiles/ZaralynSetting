.class public Lcom/android/settings/system/AdditionalSystemUpdatePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AdditionalSystemUpdatePreferenceController.java"


# static fields
.field private static final KEY_UPDATE_SETTING:Ljava/lang/String; = "additional_system_update_settings"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    const-string v0, "additional_system_update_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/android/settings/system/AdditionalSystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    return v0
.end method
