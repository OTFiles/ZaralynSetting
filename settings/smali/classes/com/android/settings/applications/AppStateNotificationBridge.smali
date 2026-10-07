.class public Lcom/android/settings/applications/AppStateNotificationBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateNotificationBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    }
.end annotation


# static fields
.field public static final FILTER_APP_NOTIFICATION_FREQUENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

.field public static final FILTER_APP_NOTIFICATION_RECENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

.field public static final FREQUENCY_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECENT_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mContext:Landroid/content/Context;

.field private mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field protected mUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 232
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_RECENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    .line 247
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$2;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_FREQUENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    .line 262
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$3;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->RECENT_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    .line 278
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$4;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FREQUENCY_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appState"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p3, "callback"    # Lcom/android/settings/applications/AppStateBaseBridge$Callback;
    .param p4, "usageStatsManager"    # Landroid/app/usage/IUsageStatsManager;
    .param p5, "userManager"    # Landroid/os/UserManager;
    .param p6, "backend"    # Lcom/android/settings/notification/NotificationBackend;

    .line 58
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 59
    iput-object p1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    .line 60
    iput-object p4, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 61
    iput-object p6, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUserIds:Ljava/util/List;

    .line 63
    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUserIds:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p5, v0}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    .line 65
    .local v0, "workUserId":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUserIds:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 47
    invoke-static {p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object v0

    return-object v0
.end method

.method private addBlockStatus(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "stats"    # Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    .line 111
    if-eqz p2, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->isSystemApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->systemApp:Z

    .line 114
    iget-boolean v0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->systemApp:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->systemApp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    .line 116
    :cond_2
    return-void
.end method

.method private calculateAvgSentCounts(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V
    .locals 2
    .param p1, "stats"    # Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget v0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    .line 121
    iget v0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 122
    iget v0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    iput v0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentWeekly:I

    .line 125
    :cond_0
    return-void
.end method

.method public static final checkSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2
    .param p0, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 304
    invoke-static {p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object v0

    .line 305
    .local v0, "stats":Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    if-nez v0, :cond_0

    .line 306
    const/4 v1, 0x0

    return v1

    .line 309
    :cond_0
    iget-boolean v1, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static final enableSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2
    .param p0, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 295
    invoke-static {p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object v0

    .line 296
    .local v0, "stats":Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    if-nez v0, :cond_0

    .line 297
    const/4 v1, 0x0

    return v1

    .line 300
    :cond_0
    iget-boolean v1, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    return v1
.end method

.method protected static getKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "pkg"    # Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    .locals 2
    .param p0, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 197
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-eqz v1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    return-object v0

    .line 203
    :cond_1
    return-object v0

    .line 198
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Z)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    .param p2, "sortByRecency"    # Z

    .line 96
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 97
    iget-wide v1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 98
    const v0, 0x7f1209ab

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    nop

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    .line 100
    invoke-static {p0, v1, v2, v0}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 103
    :cond_1
    iget v1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentWeekly:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 104
    const v1, 0x7f1209ac

    new-array v0, v0, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentWeekly:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_2
    const v1, 0x7f1209aa

    new-array v0, v0, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$getSwitchOnClickListener$0(Lcom/android/settings/applications/AppStateNotificationBridge;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V
    .locals 6
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "v"    # Landroid/view/View;

    .line 213
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    .line 214
    .local v0, "view":Landroid/view/ViewGroup;
    const v1, 0x7f0a043a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 215
    .local v1, "toggle":Landroid/widget/Switch;
    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {v1}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Switch;->toggle()V

    .line 220
    iget-object v2, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 221
    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    .line 220
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    .line 222
    invoke-static {p1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object v2

    .line 223
    .local v2, "stats":Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    .line 227
    .end local v2
    :cond_1
    return-void
.end method


# virtual methods
.method protected getAggregatedUsageEvents(ILjava/lang/String;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    .locals 16
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 165
    const/4 v2, 0x0

    .line 167
    .local v2, "stats":Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 168
    .local v11, "now":J
    const-wide/32 v3, 0x240c8400

    sub-long v13, v11, v3

    .line 169
    .local v13, "startTime":J
    const/4 v0, 0x0

    move-object v15, v0

    .line 171
    .local v15, "events":Landroid/app/usage/UsageEvents;
    :try_start_0
    iget-object v3, v1, Lcom/android/settings/applications/AppStateNotificationBridge;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iget-object v0, v1, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 171
    move-wide v4, v13

    move-wide v6, v11

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-interface/range {v3 .. v10}, Landroid/app/usage/IUsageStatsManager;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v0

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 176
    .end local v0
    :goto_0
    if-eqz v15, :cond_3

    .line 177
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 178
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    :cond_0
    :goto_1
    invoke-virtual {v15}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    invoke-virtual {v15, v0}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 181
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 182
    if-nez v2, :cond_1

    .line 183
    new-instance v3, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    invoke-direct {v3}, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;-><init>()V

    move-object v2, v3

    .line 185
    :cond_1
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 186
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    .line 188
    :cond_2
    iget v3, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    goto :goto_1

    .line 193
    .end local v0
    :cond_3
    return-object v2
.end method

.method protected getAggregatedUsageEvents()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 130
    .local v0, "aggregatedStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 131
    .local v8, "now":J
    const-wide/32 v1, 0x240c8400

    sub-long v10, v8, v1

    .line 132
    .local v10, "startTime":J
    iget-object v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUserIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 133
    .local v13, "userId":I
    const/4 v1, 0x0

    move-object v14, v1

    .line 135
    .local v14, "events":Landroid/app/usage/UsageEvents;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 135
    move-wide v2, v10

    move-wide v4, v8

    move v6, v13

    invoke-interface/range {v1 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v1

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v1

    .line 139
    goto :goto_1

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 140
    .end local v1
    :goto_1
    if-eqz v14, :cond_3

    .line 141
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v1}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 142
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    :goto_2
    invoke-virtual {v14}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {v14, v1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 144
    nop

    .line 145
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/settings/applications/AppStateNotificationBridge;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    .line 146
    .local v2, "stats":Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    if-nez v2, :cond_0

    .line 147
    new-instance v3, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    invoke-direct {v3}, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;-><init>()V

    move-object v2, v3

    .line 148
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/settings/applications/AppStateNotificationBridge;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    .line 152
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 153
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    .line 155
    :cond_1
    iget v3, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    .line 158
    .end local v2
    :cond_2
    goto :goto_2

    .line 160
    .end local v1
    .end local v13
    .end local v14
    :cond_3
    goto :goto_0

    .line 161
    :cond_4
    return-object v0
.end method

.method public getSwitchOnClickListener(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 211
    if-eqz p1, :cond_0

    .line 212
    new-instance v0, Lcom/android/settings/applications/-$$Lambda$AppStateNotificationBridge$3yb6PrF82n91FG3YEHY_Ccl1JyI;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/-$$Lambda$AppStateNotificationBridge$3yb6PrF82n91FG3YEHY_Ccl1JyI;-><init>(Lcom/android/settings/applications/AppStateNotificationBridge;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    return-object v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected loadAllExtraInfo()V
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getAggregatedUsageEvents()Ljava/util/Map;

    move-result-object v1

    .line 76
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 77
    .local v3, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 78
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settings/applications/AppStateNotificationBridge;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    .line 79
    .local v4, "stats":Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    invoke-direct {p0, v4}, Lcom/android/settings/applications/AppStateNotificationBridge;->calculateAvgSentCounts(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V

    .line 80
    invoke-direct {p0, v3, v4}, Lcom/android/settings/applications/AppStateNotificationBridge;->addBlockStatus(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V

    .line 81
    iput-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 82
    .end local v3
    .end local v4
    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 2
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 87
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 88
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getAggregatedUsageEvents(ILjava/lang/String;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object v0

    .line 89
    .local v0, "stats":Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppStateNotificationBridge;->calculateAvgSentCounts(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/AppStateNotificationBridge;->addBlockStatus(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V

    .line 91
    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 92
    return-void
.end method
