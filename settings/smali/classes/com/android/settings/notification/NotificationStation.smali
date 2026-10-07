.class public Lcom/android/settings/notification/NotificationStation;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;,
        Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/service/notification/NotificationListenerService;

.field private mNoMan:Landroid/app/INotificationManager;

.field private final mNotificationSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mRefreshListRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 93
    new-instance v0, Lcom/android/settings/notification/NotificationStation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationStation$1;-><init>(Lcom/android/settings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/android/settings/notification/NotificationStation$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationStation$2;-><init>(Lcom/android/settings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    .line 143
    new-instance v0, Lcom/android/settings/notification/NotificationStation$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationStation$3;-><init>(Lcom/android/settings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationStation;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->refreshList()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 66
    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/NotificationStation;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationStation;

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/notification/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationStation;
    .param p1, "x1"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 66
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationStation;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->scheduleRefreshList()V

    return-void
.end method

.method private static bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 232
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 233
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 234
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 235
    return-object v0
.end method

.method private static formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 4
    .param p0, "pi"    # Landroid/app/PendingIntent;

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 255
    .local v1, "is":Landroid/content/IntentSender;
    const-string v2, "Intent(pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/IntentSender;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v2

    .line 259
    .local v2, "isActivity":Z
    if-eqz v2, :cond_0

    const-string v3, " (activity)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .end local v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    .line 261
    :goto_0
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private generateExtraText(Landroid/service/notification/StatusBarNotification;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "info"    # Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    .line 317
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 319
    .local v0, "rank":Landroid/service/notification/NotificationListenerService$Ranking;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 320
    .local v1, "n":Landroid/app/Notification;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 321
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    const v3, 0x7f120979

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "delim":Ljava/lang/String;
    const v4, 0x7f120983

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 323
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    .line 324
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "\n"

    .line 325
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 326
    const v5, 0x7f120981

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 327
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 328
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 329
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 330
    const v5, 0x7f12097f

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 331
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 332
    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 333
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "channelId"

    .line 334
    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 335
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 336
    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 337
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "postTime"

    .line 338
    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 339
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 340
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 341
    invoke-virtual {v1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 342
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, "timeoutAfter"

    .line 343
    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 344
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 345
    invoke-virtual {v1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 347
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 348
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f12097d

    .line 349
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 350
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 351
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 352
    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    const v4, 0x7f12097e

    .line 354
    invoke-virtual {p0, v4}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-static {v4}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 357
    :cond_1
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f12098a

    .line 358
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 359
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 360
    iget v4, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x1

    const v5, 0x7f120982

    const v6, 0x7f120977

    if-eqz v4, :cond_2

    .line 361
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 362
    :cond_2
    iget-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_3

    .line 363
    iget-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 367
    :goto_0
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v7, 0x7f12098c

    .line 368
    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 369
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 370
    iget v4, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    .line 371
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 372
    :cond_4
    iget-object v4, v1, Landroid/app/Notification;->vibrate:[J

    if-eqz v4, :cond_6

    .line 373
    move v4, v7

    .local v4, "vi":I
    :goto_1
    iget-object v5, v1, Landroid/app/Notification;->vibrate:[J

    array-length v5, v5

    if-ge v4, v5, :cond_7

    .line 374
    if-lez v4, :cond_5

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 375
    :cond_5
    iget-object v5, v1, Landroid/app/Notification;->vibrate:[J

    aget-wide v5, v5, v4

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 373
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 378
    .end local v4
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 380
    :cond_7
    :goto_2
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f12098d

    .line 381
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 382
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/app/Notification;->visibility:I

    .line 383
    invoke-static {v5}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 384
    iget-object v4, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v4, :cond_8

    .line 385
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f120986

    .line 386
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 388
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 389
    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->getTitleString(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 391
    :cond_8
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f120985

    .line 392
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 393
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/app/Notification;->priority:I

    .line 394
    invoke-static {v5}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 395
    iget-boolean v4, p2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz v4, :cond_c

    .line 397
    iget-object v4, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 398
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f120980

    .line 399
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 401
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 402
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v5

    invoke-static {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 403
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 404
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f12097a

    .line 405
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 407
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 408
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 410
    :cond_9
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f120974

    .line 411
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 413
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 414
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->canShowBadge()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 416
    :cond_a
    iget-object v4, p0, Lcom/android/settings/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-nez v4, :cond_b

    .line 417
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f120988

    .line 418
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 421
    :cond_b
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f120987

    .line 422
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 427
    :cond_c
    :goto_3
    iget-object v4, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const v5, 0x7f120975

    if-eqz v4, :cond_d

    .line 428
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 429
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 431
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 432
    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 434
    :cond_d
    iget-object v4, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_e

    .line 435
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v6, 0x7f120978

    .line 436
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 438
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 439
    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 441
    :cond_e
    iget-object v4, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_f

    .line 442
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v6, 0x7f12097c

    .line 443
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 445
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 446
    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 448
    :cond_f
    iget-object v4, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/16 v6, 0x20

    if-eqz v4, :cond_12

    iget-object v4, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v4, v4

    if-lez v4, :cond_12

    .line 449
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v8, 0x7f120972

    .line 450
    invoke-virtual {p0, v8}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 451
    move v4, v7

    .local v4, "ai":I
    :goto_4
    iget-object v8, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v8, v8

    if-ge v4, v8, :cond_12

    .line 452
    iget-object v8, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v8, v8, v4

    .line 453
    .local v8, "action":Landroid/app/Notification$Action;
    const-string v9, "\n  "

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const v10, 0x7f12098b

    .line 454
    invoke-virtual {p0, v10}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 456
    invoke-virtual {v9, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    iget-object v10, v8, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 457
    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 458
    iget-object v9, v8, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v9, :cond_10

    .line 459
    const-string v9, "\n    "

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 460
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 462
    invoke-virtual {v9, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    iget-object v10, v8, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 463
    invoke-static {v10}, Lcom/android/settings/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 465
    :cond_10
    invoke-virtual {v8}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 466
    const-string v9, "\n    "

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const v10, 0x7f120989

    .line 467
    invoke-virtual {p0, v10}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 469
    invoke-virtual {v9, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 470
    invoke-virtual {v8}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v10

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 451
    .end local v8
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 474
    .end local v4
    :cond_12
    iget-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_13

    .line 475
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f120976

    .line 476
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 478
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 479
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 483
    :cond_13
    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_15

    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_15

    .line 484
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x7f12097b

    .line 485
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 487
    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 488
    .local v5, "extraKey":Ljava/lang/String;
    iget-object v8, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 489
    .local v8, "val":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x64

    if-le v9, v10, :cond_14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 490
    :cond_14
    const-string v9, "\n  "

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 491
    .end local v5
    .end local v8
    goto :goto_5

    .line 495
    :cond_15
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 496
    .local v4, "p":Landroid/os/Parcel;
    invoke-virtual {v1, v4, v7}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 497
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const v7, 0x7f120984

    .line 498
    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 499
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 500
    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 501
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const v6, 0x7f120973

    .line 502
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 503
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 504
    invoke-virtual {v4}, Landroid/os/Parcel;->getBlobAshmemSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-string v6, "\n"

    .line 505
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 507
    .end local v4
    return-object v2
.end method

.method private getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 511
    const/4 v0, 0x0

    .line 513
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    .line 515
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 516
    const/4 p2, 0x0

    .line 518
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 522
    goto :goto_0

    .line 519
    :catch_0
    move-exception v1

    .line 520
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    const/4 v2, 0x0

    return-object v2

    .line 524
    .end local v1
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 526
    :goto_0
    return-object v0
.end method

.method private static getTitleString(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # Landroid/app/Notification;

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 246
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 249
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resId"    # I

    .line 552
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationStation;->getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 554
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 555
    return-object v1

    .line 559
    :cond_0
    :try_start_0
    invoke-virtual {v0, p3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 560
    :catch_0
    move-exception v2

    .line 561
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Icon not found in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, "<system>"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 561
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    .end local v2
    return-object v1
.end method

.method private loadNotifications()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation

    .line 266
    move-object/from16 v1, p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    move v2, v0

    .line 268
    .local v2, "currentUserId":I
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/settings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    iget-object v4, v1, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    .line 269
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-interface {v0, v4}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 270
    .local v0, "active":[Landroid/service/notification/StatusBarNotification;
    iget-object v4, v1, Lcom/android/settings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    iget-object v5, v1, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    .line 271
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x32

    .line 270
    invoke-interface {v4, v5, v6}, Landroid/app/INotificationManager;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 273
    .local v4, "dismissed":[Landroid/service/notification/StatusBarNotification;
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v0

    array-length v7, v4

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;>;"
    const/4 v6, 0x2

    new-array v7, v6, [[Landroid/service/notification/StatusBarNotification;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v9, 0x1

    aput-object v4, v7, v9

    array-length v10, v7

    move v11, v8

    :goto_0
    if-ge v11, v10, :cond_6

    aget-object v12, v7, v11

    .line 278
    .local v12, "resultset":[Landroid/service/notification/StatusBarNotification;
    array-length v13, v12

    move v14, v8

    :goto_1
    if-ge v14, v13, :cond_5

    aget-object v15, v12, v14

    .line 279
    .local v15, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    move v6, v8

    :goto_2
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v9

    if-eq v9, v2, :cond_1

    const/4 v9, 0x1

    goto :goto_3

    :cond_1
    move v9, v8

    :goto_3
    and-int/2addr v6, v9

    if-eqz v6, :cond_2

    .line 280
    nop

    .line 278
    move-object/from16 v18, v0

    move/from16 v17, v2

    move v1, v8

    const/4 v8, 0x1

    const/16 v16, 0x2

    goto/16 :goto_5

    .line 283
    :cond_2
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 284
    .local v6, "n":Landroid/app/Notification;
    new-instance v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    invoke-direct {v9, v3}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;-><init>(Lcom/android/settings/notification/NotificationStation$1;)V

    .line 285
    .local v9, "info":Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    .line 286
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    iput v3, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    .line 287
    iget-object v3, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    iget v8, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v17, v2

    :try_start_1
    iget v2, v6, Landroid/app/Notification;->icon:I

    .end local v2
    .local v17, "currentUserId":I
    invoke-direct {v1, v3, v8, v2}, Lcom/android/settings/notification/NotificationStation;->loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 288
    iget-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    iget v3, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/notification/NotificationStation;->loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    .line 289
    iget-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/settings/notification/NotificationStation;->loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    .line 290
    invoke-static {v6}, Lcom/android/settings/notification/NotificationStation;->getTitleString(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 291
    iget-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    const v2, 0x7f12098e

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 294
    :cond_3
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    .line 295
    iget v2, v6, Landroid/app/Notification;->priority:I

    iput v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->priority:I

    .line 296
    invoke-virtual {v6}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->channel:Ljava/lang/String;

    .line 297
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->key:Ljava/lang/String;

    .line 299
    if-ne v12, v0, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    .line 301
    invoke-direct {v1, v15, v9}, Lcom/android/settings/notification/NotificationStation;->generateExtraText(Landroid/service/notification/StatusBarNotification;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->extra:Ljava/lang/CharSequence;

    .line 303
    const-string v2, "   [%d] %s: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v18, v0

    iget-wide v0, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    .end local v0
    .local v18, "active":[Landroid/service/notification/StatusBarNotification;
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    iget-object v0, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v0, v3, v8

    iget-object v0, v9, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    const/16 v16, 0x2

    aput-object v0, v3, v16

    invoke-static {v2, v3}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v6
    .end local v9
    .end local v15
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move v9, v8

    move/from16 v6, v16

    move/from16 v2, v17

    move-object/from16 v0, v18

    const/4 v3, 0x0

    move v8, v1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 309
    .end local v4
    .end local v5
    .end local v12
    .end local v18
    :catch_0
    move-exception v0

    goto :goto_6

    .line 277
    .end local v17
    .restart local v0
    .restart local v2
    .restart local v4
    .restart local v5
    :cond_5
    move-object/from16 v18, v0

    move/from16 v17, v2

    move/from16 v16, v6

    move v1, v8

    move v8, v9

    .end local v0
    .end local v2
    .restart local v17
    .restart local v18
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    move v8, v1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 308
    .end local v17
    .end local v18
    .restart local v0
    .restart local v2
    :cond_6
    move-object/from16 v18, v0

    move/from16 v17, v2

    .end local v0
    .end local v2
    .restart local v17
    .restart local v18
    return-object v5

    .line 309
    .end local v4
    .end local v5
    .end local v17
    .end local v18
    .restart local v2
    :catch_1
    move-exception v0

    move/from16 v17, v2

    .line 310
    .end local v2
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17
    :goto_6
    sget-object v1, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot load Notifications: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    .end local v0
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 535
    goto :goto_0

    .line 533
    :catch_0
    move-exception v1

    .line 534
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v3, "Cannot get application icon"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    .end local v1
    :goto_0
    return-object v0
.end method

.method private loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 544
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 547
    .end local v0
    :cond_0
    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot load package name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    .end local v0
    :goto_0
    return-object p1
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, p0

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method private refreshList()V
    .locals 7

    .line 209
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->loadNotifications()Ljava/util/List;

    move-result-object v0

    .line 210
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;>;"
    if-eqz v0, :cond_1

    .line 211
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 212
    .local v1, "N":I
    const-string v2, "adding %d infos"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    if-nez v2, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationStation;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 218
    nop

    .local v5, "i":I
    :goto_0
    move v2, v5

    .end local v5
    .local v2, "i":I
    if-ge v2, v1, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    new-instance v4, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    invoke-direct {v4, v5, v6}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)V

    .line 219
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 218
    add-int/lit8 v5, v2, 0x1

    .end local v2
    .restart local v5
    goto :goto_0

    .line 223
    .end local v1
    .end local v5
    :cond_1
    return-void
.end method

.method private scheduleRefreshList()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 183
    const/16 v0, 0x4b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 188
    const-string v0, "onActivityCreated(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 192
    .local v0, "listView":Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0, v2}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 193
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 154
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    .line 157
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    .line 158
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    .line 159
    const-string v0, "notification"

    .line 160
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    .line 161
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 165
    const-string v0, "onDetach()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    .line 168
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 169
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    .line 177
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v0
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 179
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 197
    const-string v0, "onResume()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 200
    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 204
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/settings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationStation;->refreshList()V

    .line 206
    return-void
.end method
