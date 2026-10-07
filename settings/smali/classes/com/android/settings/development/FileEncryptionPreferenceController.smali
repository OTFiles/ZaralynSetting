.class public Lcom/android/settings/development/FileEncryptionPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "FileEncryptionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final FILE_ENCRYPTION_PROPERTY_KEY:Ljava/lang/String; = "ro.crypto.type"


# instance fields
.field private final mStorageManager:Landroid/os/storage/IStorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/development/FileEncryptionPreferenceController;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 47
    return-void
.end method

.method private getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 2

    .line 81
    :try_start_0
    const-string v0, "mount"

    .line 82
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/VerifyError;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "convert_to_file_encryption"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mIsAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mStorageManager:Landroid/os/storage/IStorageManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->isConvertibleToFBE()Z

    move-result v0

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 52
    .end local v0
    :cond_1
    :goto_0
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 69
    const-string v0, "file"

    const-string v1, "ro.crypto.type"

    const-string v2, "none"

    .line 70
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120406

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
