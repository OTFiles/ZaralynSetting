.class Lcom/android/settings/PrivacySettingsNew$1;
.super Ljava/lang/Object;
.source "PrivacySettingsNew.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PrivacySettingsNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PrivacySettingsNew;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacySettingsNew;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/PrivacySettingsNew;

    .line 130
    iput-object p1, p0, Lcom/android/settings/PrivacySettingsNew$1;->this$0:Lcom/android/settings/PrivacySettingsNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 133
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 137
    .local v0, "nextValue":Z
    const/4 v1, 0x0

    .line 138
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/settings/PrivacySettingsNew$1;->this$0:Lcom/android/settings/PrivacySettingsNew;

    invoke-static {v2}, Lcom/android/settings/PrivacySettingsNew;->access$000(Lcom/android/settings/PrivacySettingsNew;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/PrivacySettingsNew$1;->this$0:Lcom/android/settings/PrivacySettingsNew;

    invoke-static {v2}, Lcom/android/settings/PrivacySettingsNew;->access$100(Lcom/android/settings/PrivacySettingsNew;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V

    .line 141
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/settings/PrivacySettingsNew$1;->this$0:Lcom/android/settings/PrivacySettingsNew;

    invoke-static {v3}, Lcom/android/settings/PrivacySettingsNew;->access$000(Lcom/android/settings/PrivacySettingsNew;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v3

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 146
    .end local v2
    :cond_1
    :goto_0
    return v1
.end method
