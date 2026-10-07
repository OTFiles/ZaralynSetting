.class Lcom/android/settings/notification/NotificationAppListSettings$7$1;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationAppListSettings$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/NotificationAppListSettings$7;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAppListSettings$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/notification/NotificationAppListSettings$7;

    .line 713
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppListSettings$7$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$7$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$7;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1700(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$7$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$7;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$7$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$7;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$800(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120b5b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 719
    :cond_1
    return-void
.end method
