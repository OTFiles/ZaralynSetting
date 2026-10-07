.class Lcom/android/settings/notification/NotificationAppListSettings$4;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationAppListSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAppListSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 249
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppListSettings$4;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 252
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$4;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppListSettings$4;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppListSettings;->access$600(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/settings/notification/NotificationAppListSettings;->access$700(Lcom/android/settings/notification/NotificationAppListSettings;ZZ)V

    .line 253
    return-void
.end method
