.class public Lcom/android/settings/notification/NotificationBackend;
.super Ljava/lang/Object;
.source "NotificationBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationBackend$AppRow;,
        Lcom/android/settings/notification/NotificationBackend$Row;
    }
.end annotation


# static fields
.field static sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "notification"

    .line 47
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static markAppRowWithBlockables([Ljava/lang/String;Lcom/android/settings/notification/NotificationBackend$AppRow;Ljava/lang/String;)V
    .locals 7
    .param p0, "nonBlockablePkgs"    # [Ljava/lang/String;
    .param p1, "row"    # Lcom/android/settings/notification/NotificationBackend$AppRow;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 83
    if-eqz p0, :cond_3

    .line 84
    array-length v0, p0

    .line 85
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 86
    aget-object v3, p0, v2

    .line 87
    .local v3, "pkg":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 91
    const-string v4, ":"

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    const-string v4, ":"

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    iput-object v4, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedChannelId:Ljava/lang/String;

    goto :goto_1

    .line 94
    :cond_1
    aget-object v4, p0, v2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    iput-boolean v5, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedImportance:Z

    iput-boolean v5, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    .line 85
    .end local v3
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v0
    .end local v2
    :cond_3
    return-void
.end method


# virtual methods
.method public canShowBadge(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 142
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->canShowBadge(Ljava/lang/String;I)Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    const/4 v1, 0x0

    return v1
.end method

.method public getBlockedAppCount()I
    .locals 3

    .line 255
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getBlockedAppCount(I)I

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    const/4 v1, 0x0

    return v1
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 219
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    const/4 v1, 0x0

    return v1
.end method

.method public getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 161
    return-object v0

    .line 164
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NotificationBackend"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    return-object v0
.end method

.method public getChannelCount(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 237
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NotificationBackend"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    return v0
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 210
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    const/4 v1, 0x0

    return v1
.end method

.method public getGroup(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 173
    return-object v0

    .line 176
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p3, p1, p2}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NotificationBackend"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    return-object v0
.end method

.method public getGroups(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 185
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/app/INotificationManager;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    return-object v1
.end method

.method public getNotificationsBanned(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 116
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v1

    .line 117
    .local v1, "enabled":Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 118
    .end local v1
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NotificationBackend"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    return v0
.end method

.method public getRecentApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/NotifyingApp;",
            ">;"
        }
    .end annotation

    .line 246
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getRecentNotifyingAppsForUser(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public isSystemApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 103
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 105
    .local v0, "info":Landroid/content/pm/PackageInfo;
    new-instance v1, Lcom/android/settings/notification/NotificationBackend$AppRow;

    invoke-direct {v1}, Lcom/android/settings/notification/NotificationBackend$AppRow;-><init>()V

    .line 106
    .local v1, "row":Lcom/android/settings/notification/NotificationBackend$AppRow;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/settings/notification/NotificationBackend;->recordCanBeBlocked(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    .line 107
    iget-boolean v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 108
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 111
    .end local v0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 50
    new-instance v0, Lcom/android/settings/notification/NotificationBackend$AppRow;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend$AppRow;-><init>()V

    .line 51
    .local v0, "row":Lcom/android/settings/notification/NotificationBackend$AppRow;
    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 52
    iget v1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 54
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    .line 58
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "NotificationBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    .line 59
    .end local v1
    :goto_0
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 60
    iget-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 61
    iget-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->canShowBadge(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->showBadge:Z

    .line 62
    iget v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->userId:I

    .line 63
    iget-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->blockedChannelCount:I

    .line 64
    iget-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->channelCount:I

    .line 65
    return-object v0
.end method

.method public loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "app"    # Landroid/content/pm/PackageInfo;

    .line 69
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    .line 70
    .local v0, "row":Lcom/android/settings/notification/NotificationBackend$AppRow;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/settings/notification/NotificationBackend;->recordCanBeBlocked(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    .line 71
    return-object v0
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 228
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    const/4 v1, 0x0

    return v1
.end method

.method recordCanBeBlocked(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Lcom/android/settings/notification/NotificationBackend$AppRow;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "app"    # Landroid/content/pm/PackageInfo;
    .param p4, "row"    # Lcom/android/settings/notification/NotificationBackend$AppRow;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    iput-boolean v0, p4, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "nonBlockablePkgs":[Ljava/lang/String;
    iget-object v1, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p4, v1}, Lcom/android/settings/notification/NotificationBackend;->markAppRowWithBlockables([Ljava/lang/String;Lcom/android/settings/notification/NotificationBackend$AppRow;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .line 126
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "miscellaneous"

    .line 128
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 129
    .local v1, "defaultChannel":Landroid/app/NotificationChannel;
    if-eqz p3, :cond_0

    const/16 v2, -0x3e8

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 130
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 132
    .end local v1
    :cond_1
    sget-object v1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 133
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NotificationBackend"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    return v0
.end method

.method public setShowBadge(Ljava/lang/String;IZ)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "showBadge"    # Z

    .line 151
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->setShowBadge(Ljava/lang/String;IZ)V

    .line 152
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    const/4 v1, 0x0

    return v1
.end method

.method public updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;

    .line 194
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 197
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v0
    :goto_0
    return-void
.end method

.method public updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;

    .line 202
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    .line 205
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v0
    :goto_0
    return-void
.end method
