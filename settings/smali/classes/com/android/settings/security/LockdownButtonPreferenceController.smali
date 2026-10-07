.class public Lcom/android/settings/security/LockdownButtonPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "LockdownButtonPreferenceController.java"


# static fields
.field private static final KEY_LOCKDOWN_ENALBED:Ljava/lang/String; = "security_setting_lockdown_enabled"


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const-string v0, "security_setting_lockdown_enabled"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/LockdownButtonPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 38
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/settings/security/LockdownButtonPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    return v0

    .line 45
    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/android/settings/security/LockdownButtonPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockdown_in_power_menu"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public setChecked(Z)Z
    .locals 2
    .param p1, "isChecked"    # Z

    .line 57
    iget-object v0, p0, Lcom/android/settings/security/LockdownButtonPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockdown_in_power_menu"

    .line 58
    nop

    .line 57
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    const/4 v0, 0x1

    return v0
.end method
