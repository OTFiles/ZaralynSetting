.class Lcom/android/settings/users/UserSettings$14;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1158
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeysFromXml(Landroid/content/Context;I)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1179
    invoke-super {p0, p1, p2}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeysFromXml(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 1180
    .local v0, "niks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string v2, "user_settings_add_users_when_locked"

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 1182
    invoke-virtual {v1, v0}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1183
    new-instance v1, Lcom/android/settings/users/AutoSyncDataPreferenceController;

    invoke-direct {v1, p1, v3}, Lcom/android/settings/users/AutoSyncDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    .line 1184
    invoke-virtual {v1, v0}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1185
    new-instance v1, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;

    invoke-direct {v1, p1, v3}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    .line 1186
    invoke-virtual {v1, v0}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1187
    new-instance v1, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;

    invoke-direct {v1, p1, v3}, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    .line 1188
    invoke-virtual {v1, v0}, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1189
    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 1169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v0, "index":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1172
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f1500b9

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1173
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    return-object v0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1162
    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object v0

    .line 1163
    .local v0, "userCaps":Lcom/android/settings/users/UserCapabilities;
    iget-boolean v1, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    return v1
.end method
