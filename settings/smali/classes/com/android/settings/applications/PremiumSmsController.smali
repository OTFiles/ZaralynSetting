.class public Lcom/android/settings/applications/PremiumSmsController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PremiumSmsController.java"


# static fields
.field static final KEY_PREMIUM_SMS:Ljava/lang/String; = "premium_sms"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    const-string v0, "premium_sms"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x2

    .line 35
    :goto_0
    return v0
.end method
