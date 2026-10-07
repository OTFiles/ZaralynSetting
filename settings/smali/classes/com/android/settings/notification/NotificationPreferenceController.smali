.class public abstract Lcom/android/settings/notification/NotificationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NotificationPreferenceController.java"


# instance fields
.field protected mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

.field protected final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mChannel:Landroid/app/NotificationChannel;

.field protected mChannelGroup:Landroid/app/NotificationChannelGroup;

.field protected final mContext:Landroid/content/Context;

.field protected final mNm:Landroid/app/NotificationManager;

.field protected final mPm:Landroid/content/pm/PackageManager;

.field protected final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationBackend;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mNm:Landroid/app/NotificationManager;

    .line 61
    iput-object p2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 62
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mUm:Landroid/os/UserManager;

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 64
    return-void
.end method


# virtual methods
.method protected checkCanBeVisible(I)Z
    .locals 4
    .param p1, "minImportanceVisible"    # I

    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    const-string v0, "ChannelPrefContr"

    const-string v2, "No channel"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return v1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    .line 120
    .local v0, "importance":I
    const/16 v2, -0x3e8

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 121
    return v3

    .line 123
    :cond_1
    if-lt v0, p1, :cond_2

    move v1, v3

    nop

    :cond_2
    return v1
.end method

.method protected hasValidGroup()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    return v1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v0, :cond_1

    .line 75
    return v1

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 83
    :cond_4
    return v2
.end method

.method protected isChannelBlockable()Z
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 142
    return v2

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 146
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 145
    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    return v1

    .line 148
    :cond_3
    return v1
.end method

.method protected isChannelConfigurable()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedChannelId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isChannelGroupBlockable()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    return v0

    .line 159
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected final isDefaultChannel()Z
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_0
    const-string v0, "miscellaneous"

    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0
    .param p1, "appRow"    # Lcom/android/settings/notification/NotificationBackend$AppRow;
    .param p2, "channel"    # Landroid/app/NotificationChannel;
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 107
    iput-object p1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    .line 108
    iput-object p2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 109
    iput-object p3, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 110
    iput-object p4, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 111
    return-void
.end method

.method protected saveChannel()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v3, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 130
    :cond_0
    return-void
.end method
