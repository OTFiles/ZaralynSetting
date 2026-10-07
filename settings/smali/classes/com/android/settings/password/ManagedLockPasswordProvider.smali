.class public Lcom/android/settings/password/ManagedLockPasswordProvider;
.super Ljava/lang/Object;
.source "ManagedLockPasswordProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 34
    new-instance v0, Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-direct {v0}, Lcom/android/settings/password/ManagedLockPasswordProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method createIntent(ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "requirePasswordToDecrypt"    # Z
    .param p2, "password"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method getPickerOptionTitle(Z)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "forFingerprint"    # Z

    .line 55
    const-string v0, ""

    return-object v0
.end method

.method isManagedPasswordChoosable()Z
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method isSettingManagedPasswordSupported()Z
    .locals 1

    .line 43
    const/4 v0, 0x0

    return v0
.end method
