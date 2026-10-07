.class public Lcom/android/settings/deletionhelper/AutomaticStorageManagerDescriptionPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AutomaticStorageManagerDescriptionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 11
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerDescriptionPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 54
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 55
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 56
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v3, "automatic_storage_manager_bytes_cleared"

    .line 57
    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 59
    .local v6, "freedBytes":J
    const-string v3, "automatic_storage_manager_last_run"

    .line 60
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 61
    .local v8, "lastRunMillis":J
    cmp-long v3, v6, v4

    if-eqz v3, :cond_1

    cmp-long v3, v8, v4

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isStorageManagerEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    const v3, 0x7f1201a2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 67
    invoke-static {v1, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const/16 v10, 0x10

    .line 68
    invoke-static {v1, v8, v9, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    .line 65
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    const v3, 0x7f1201a6

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 71
    :goto_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "freed_bytes"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 43
    const/4 v0, 0x1

    return v0
.end method
