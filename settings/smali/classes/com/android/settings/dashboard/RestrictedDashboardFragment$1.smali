.class Lcom/android/settings/dashboard/RestrictedDashboardFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "RestrictedDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/RestrictedDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/RestrictedDashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/RestrictedDashboardFragment;

    .line 80
    iput-object p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment$1;->this$0:Lcom/android/settings/dashboard/RestrictedDashboardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 83
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment$1;->this$0:Lcom/android/settings/dashboard/RestrictedDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->access$000(Lcom/android/settings/dashboard/RestrictedDashboardFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment$1;->this$0:Lcom/android/settings/dashboard/RestrictedDashboardFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->access$102(Lcom/android/settings/dashboard/RestrictedDashboardFragment;Z)Z

    .line 85
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment$1;->this$0:Lcom/android/settings/dashboard/RestrictedDashboardFragment;

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->access$002(Lcom/android/settings/dashboard/RestrictedDashboardFragment;Z)Z

    .line 87
    :cond_0
    return-void
.end method
