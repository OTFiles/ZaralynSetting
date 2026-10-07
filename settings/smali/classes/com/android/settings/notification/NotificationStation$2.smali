.class Lcom/android/settings/notification/NotificationStation$2;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationStation;

    .line 100
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation$2;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->access$202(Lcom/android/settings/notification/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 128
    const-string v0, "onListenerConnected with update for %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 129
    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationStation;->access$200(Lcom/android/settings/notification/NotificationStation;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationStation;->access$200(Lcom/android/settings/notification/NotificationStation;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 128
    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->access$100(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->access$300(Lcom/android/settings/notification/NotificationStation;)V

    .line 131
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 103
    const-string v0, "onNotificationPosted: %s, with update for %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 104
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 103
    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->access$100(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v0, p2}, Lcom/android/settings/notification/NotificationStation;->access$202(Lcom/android/settings/notification/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 106
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->access$300(Lcom/android/settings/notification/NotificationStation;)V

    .line 107
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 119
    const-string v0, "onNotificationRankingUpdate with update for %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 120
    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 119
    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->access$100(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v0, p1}, Lcom/android/settings/notification/NotificationStation;->access$202(Lcom/android/settings/notification/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 122
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->access$300(Lcom/android/settings/notification/NotificationStation;)V

    .line 123
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 111
    const-string v0, "onNotificationRankingUpdate with update for %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 112
    const/4 v2, 0x0

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 111
    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->access$100(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v0, p2}, Lcom/android/settings/notification/NotificationStation;->access$202(Lcom/android/settings/notification/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$2;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->access$300(Lcom/android/settings/notification/NotificationStation;)V

    .line 115
    return-void
.end method
