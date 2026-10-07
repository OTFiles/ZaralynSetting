.class Lcom/android/settings/notification/NotificationAppListSettings$3$1;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationAppListSettings$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAppListSettings$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/notification/NotificationAppListSettings$3;

    .line 195
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppListSettings$3$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$3$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$200(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$3$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$100(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$3$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationAppListSettings;->access$302(Lcom/android/settings/notification/NotificationAppListSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$3$1;->this$1:Lcom/android/settings/notification/NotificationAppListSettings$3;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$400(Lcom/android/settings/notification/NotificationAppListSettings;)V

    .line 202
    return-void
.end method
