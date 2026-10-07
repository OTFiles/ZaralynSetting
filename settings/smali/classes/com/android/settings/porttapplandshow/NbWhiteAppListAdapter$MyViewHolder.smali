.class public Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NbWhiteAppListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public mPkgName:Ljava/lang/String;

.field public mPostion:I

.field public rootLayout:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

.field public txtNbChoosed:Landroid/widget/TextView;

.field public txtNbContent:Landroid/widget/TextView;

.field public txtNbIcon:Landroid/widget/ImageView;

.field public txtNbStatus:Landroid/widget/TextView;

.field public txtNbTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;
    .param p2, "view"    # Landroid/view/View;

    .line 453
    iput-object p1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    .line 454
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 456
    if-eqz p2, :cond_0

    .line 457
    const v0, 0x7f0a04a9

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbIcon:Landroid/widget/ImageView;

    .line 458
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 459
    const v0, 0x7f0a04ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbTitle:Landroid/widget/TextView;

    .line 460
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 461
    const v0, 0x7f0a04a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbContent:Landroid/widget/TextView;

    .line 462
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbContent:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 463
    const v0, 0x7f0a04a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbChoosed:Landroid/widget/TextView;

    .line 464
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbChoosed:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 465
    const v0, 0x7f0a04aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbStatus:Landroid/widget/TextView;

    .line 466
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    const v0, 0x7f0a0363

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->rootLayout:Landroid/widget/RelativeLayout;

    .line 470
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_1

    .line 476
    :cond_0
    :goto_0
    nop

    .line 477
    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 481
    if-nez p1, :cond_0

    .line 482
    return-void

    .line 485
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0363

    if-ne v0, v1, :cond_4

    .line 486
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    invoke-static {v0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->access$000(Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    invoke-static {v0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->access$000(Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->mPostion:I

    invoke-interface {v0, v1, p0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;->onItemClick(ILjava/lang/Object;)V

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbChoosed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    iget-object v1, v1, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mPorttAppLandshowPkgNameList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 492
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    iget-object v0, v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mPorttAppLandshowPkgNameList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    iget-object v0, v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mPorttAppLandshowPkgNameList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    iget-object v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->access$100(Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "porttActivity":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 498
    iget-object v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    iget-object v1, v1, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mPorttAppLandshowPkgNameList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .end local v0
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->saveSystemDbProttAppLandShowNames()V

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->notifyDataSetChanged()V

    .line 508
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 507
    :catch_0
    move-exception v0

    .line 510
    :cond_4
    :goto_1
    return-void
.end method
