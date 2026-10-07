.class public Lcom/android/settings/deviceinfo/storage/SecondaryUserController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SecondaryUserController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;
.implements Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/SecondaryUserController$NoSecondaryUserController;
    }
.end annotation


# instance fields
.field private mSize:J

.field private mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mTotalSizeBytes:J

.field private mUser:Landroid/content/pm/UserInfo;

.field private mUserIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/UserInfo;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 99
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    .line 101
    return-void
.end method

.method public static getSecondaryUserControllers(Landroid/content/Context;Landroid/os/UserManager;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    invoke-virtual {p1}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 67
    .local v1, "primaryUser":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    .line 68
    .local v2, "addedUser":Z
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 69
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 70
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 71
    .local v6, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 72
    goto :goto_2

    .line 75
    :cond_0
    if-eqz v6, :cond_2

    invoke-static {v1, v6}, Lcom/android/settings/Utils;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    new-instance v7, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    invoke-direct {v7, p0, v6}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const/4 v2, 0x1

    .end local v6
    goto :goto_2

    .line 76
    .restart local v6
    :cond_2
    :goto_1
    new-instance v7, Lcom/android/settings/deviceinfo/storage/UserProfileController;

    const/4 v8, 0x6

    invoke-direct {v7, p0, v6, v8}, Lcom/android/settings/deviceinfo/storage/UserProfileController;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;I)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    nop

    .line 69
    .end local v6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    .end local v4
    .end local v5
    :cond_3
    if-nez v2, :cond_4

    .line 86
    new-instance v4, Lcom/android/settings/deviceinfo/storage/SecondaryUserController$NoSecondaryUserController;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController$NoSecondaryUserController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_4
    return-object v0
.end method

.method private maybeSetIcon()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUserIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUserIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 6
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 105
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 108
    const-string v0, "pref_secondary_users"

    .line 109
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    .line 110
    .local v0, "group":Landroid/support/v7/preference/PreferenceGroup;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_user_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 112
    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mTotalSizeBytes:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 116
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 118
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->maybeSetIcon()V

    .line 120
    .end local v0
    :cond_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUser()Landroid/content/pm/UserInfo;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method public handleResult(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p1, "stats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;>;"
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->getUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 161
    .local v0, "userId":I
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 162
    .local v1, "result":Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    if-eqz v1, :cond_0

    .line 163
    iget-object v2, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->setSize(J)V

    .line 165
    :cond_0
    return-void
.end method

.method public handleUserIcons(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p1, "fetchedIcons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable;>;"
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUserIcon:Landroid/graphics/drawable/Drawable;

    .line 170
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->maybeSetIcon()V

    .line 171
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public setSize(J)V
    .locals 5
    .param p1, "size"    # J

    .line 145
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mTotalSizeBytes:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 149
    :cond_0
    return-void
.end method

.method public setTotalSize(J)V
    .locals 0
    .param p1, "totalSizeBytes"    # J

    .line 156
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mTotalSizeBytes:J

    .line 157
    return-void
.end method
