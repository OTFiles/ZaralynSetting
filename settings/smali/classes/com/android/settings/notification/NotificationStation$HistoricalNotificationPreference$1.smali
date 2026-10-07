.class Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;

.field final synthetic val$extra:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;

    .line 600
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;->this$0:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;->val$extra:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 603
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;->val$extra:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;->val$extra:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 604
    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 603
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;->this$0:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->access$600(Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;)Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->access$502(J)J

    .line 606
    return-void
.end method
