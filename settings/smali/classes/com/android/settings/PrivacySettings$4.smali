.class Lcom/android/settings/PrivacySettings$4;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/PrivacySettings;

    .line 337
    iput-object p1, p0, Lcom/android/settings/PrivacySettings$4;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 340
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x1

    return v0

    .line 343
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 344
    .local v0, "nextValue":Z
    const/4 v1, 0x0

    .line 345
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/settings/PrivacySettings$4;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/android/settings/PrivacySettings;->access$200(Lcom/android/settings/PrivacySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 347
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/PrivacySettings$4;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/android/settings/PrivacySettings;->access$300(Lcom/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V

    .line 348
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 351
    goto :goto_0

    .line 349
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/settings/PrivacySettings$4;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-static {v3}, Lcom/android/settings/PrivacySettings;->access$200(Lcom/android/settings/PrivacySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v3

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 353
    .end local v2
    :cond_1
    :goto_0
    return v1
.end method
