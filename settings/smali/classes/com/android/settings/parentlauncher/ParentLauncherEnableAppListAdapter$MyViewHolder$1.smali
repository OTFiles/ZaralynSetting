.class Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder$1;
.super Ljava/lang/Object;
.source "ParentLauncherEnableAppListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;

    .line 421
    iput-object p1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder$1;->this$1:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder$1;->this$1:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->nowDataCell:Lcom/android/settings/parentlauncher/AppDataCell;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder$1;->this$1:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->nowDataCell:Lcom/android/settings/parentlauncher/AppDataCell;

    invoke-virtual {v0}, Lcom/android/settings/parentlauncher/AppDataCell;->isCanEnableClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder$1;->this$1:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->rootLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder$1;->this$1:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder$1;->this$1:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    invoke-static {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->access$200(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    :cond_1
    :goto_0
    return-void
.end method
