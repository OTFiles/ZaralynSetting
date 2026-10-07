.class public Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ParentLauncherEnableAppListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public mPkgName:Ljava/lang/String;

.field public mPostion:I

.field public mRunnable:Ljava/lang/Runnable;

.field public nowDataCell:Lcom/android/settings/parentlauncher/AppDataCell;

.field public rootLayout:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

.field public txtNbChoosed:Landroid/widget/TextView;

.field public txtNbContent:Landroid/widget/TextView;

.field public txtNbIcon:Landroid/widget/ImageView;

.field public txtNbStatus:Landroid/widget/TextView;

.field public txtNbTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;
    .param p2, "view"    # Landroid/view/View;

    .line 360
    iput-object p1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    .line 361
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 421
    new-instance v0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder$1;

    invoke-direct {v0, p0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder$1;-><init>(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;)V

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->mRunnable:Ljava/lang/Runnable;

    .line 363
    if-eqz p2, :cond_0

    .line 364
    const v0, 0x7f0a04a9

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbIcon:Landroid/widget/ImageView;

    .line 365
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 366
    const v0, 0x7f0a04ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbTitle:Landroid/widget/TextView;

    .line 367
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 368
    const v0, 0x7f0a04a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbContent:Landroid/widget/TextView;

    .line 369
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbContent:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 370
    const v0, 0x7f0a04a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbChoosed:Landroid/widget/TextView;

    .line 371
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbChoosed:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 372
    const v0, 0x7f0a04aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbStatus:Landroid/widget/TextView;

    .line 373
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    const v0, 0x7f0a0363

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->rootLayout:Landroid/widget/RelativeLayout;

    .line 377
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_1

    .line 383
    :cond_0
    :goto_0
    nop

    .line 384
    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 388
    if-nez p1, :cond_0

    .line 389
    return-void

    .line 392
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0363

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->nowDataCell:Lcom/android/settings/parentlauncher/AppDataCell;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->nowDataCell:Lcom/android/settings/parentlauncher/AppDataCell;

    invoke-virtual {v0}, Lcom/android/settings/parentlauncher/AppDataCell;->isCanEnableClick()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->nowDataCell:Lcom/android/settings/parentlauncher/AppDataCell;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/parentlauncher/AppDataCell;->mLastClickTime:J

    .line 395
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    invoke-static {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->access$000(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    invoke-static {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->access$000(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->mPostion:I

    invoke-interface {v0, v1, p0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;->onItemClick(ILjava/lang/Object;)V

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbChoosed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    iget-object v1, v1, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mLauncherParentLauncherEnablePkgNameList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 401
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    iget-object v0, v0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mLauncherParentLauncherEnablePkgNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    iget-object v0, v0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mLauncherParentLauncherEnablePkgNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    invoke-static {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->access$100(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->resetParentModeStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    iget-object v0, v0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mLauncherParentLauncherEnablePkgNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    invoke-static {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->access$100(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->resetParentModeStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 411
    :goto_0
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->saveSystemDbLauncherParentLauncherNames()V

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->notifyDataSetChanged()V

    .line 416
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 415
    :catch_0
    move-exception v0

    .line 417
    :goto_1
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    invoke-static {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->access$200(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    :cond_3
    return-void
.end method
