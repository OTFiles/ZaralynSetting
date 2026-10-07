.class Lcom/android/settings/notification/NotificationAppListSettings$3;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAppListSettings;
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

    .line 190
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0096

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00a4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/NotificationAppListSettings$3$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationAppListSettings$3$2;-><init>(Lcom/android/settings/notification/NotificationAppListSettings$3;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$3;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/NotificationAppListSettings$3$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationAppListSettings$3$1;-><init>(Lcom/android/settings/notification/NotificationAppListSettings$3;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    nop

    .line 223
    :goto_0
    return-void
.end method
