.class public Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShortcutEnableAppListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public mPkgName:Ljava/lang/String;

.field public mPostion:I

.field public rootLayout:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

.field public txtNbChoosed:Landroid/widget/TextView;

.field public txtNbContent:Landroid/widget/TextView;

.field public txtNbIcon:Landroid/widget/ImageView;

.field public txtNbStatus:Landroid/widget/TextView;

.field public txtNbTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;
    .param p2, "view"    # Landroid/view/View;

    .line 353
    iput-object p1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    .line 354
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 356
    if-eqz p2, :cond_0

    .line 357
    const v0, 0x7f0a04a9

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbIcon:Landroid/widget/ImageView;

    .line 358
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 359
    const v0, 0x7f0a04ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbTitle:Landroid/widget/TextView;

    .line 360
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 361
    const v0, 0x7f0a04a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbContent:Landroid/widget/TextView;

    .line 362
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbContent:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 363
    const v0, 0x7f0a04a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbChoosed:Landroid/widget/TextView;

    .line 364
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbChoosed:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 365
    const v0, 0x7f0a04aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbStatus:Landroid/widget/TextView;

    .line 366
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    const v0, 0x7f0a0363

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->rootLayout:Landroid/widget/RelativeLayout;

    .line 370
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_1

    .line 376
    :cond_0
    :goto_0
    nop

    .line 377
    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 381
    if-nez p1, :cond_0

    .line 382
    return-void

    .line 385
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0363

    if-ne v0, v1, :cond_3

    .line 386
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    invoke-static {v0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->access$000(Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;)Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    invoke-static {v0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->access$000(Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;)Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->mPostion:I

    invoke-interface {v0, v1, p0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;->onItemClick(ILjava/lang/Object;)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbChoosed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    iget-object v1, v1, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mLauncherShortcutEnablePkgNameList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    iget-object v0, v0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mLauncherShortcutEnablePkgNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    iget-object v0, v0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mLauncherShortcutEnablePkgNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 396
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    invoke-static {v0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->access$100(Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->removeLauncherShortCutEventByPkg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    iget-object v0, v0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mLauncherShortcutEnablePkgNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :goto_0
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->saveSystemDbLauncherShortcutNames()V

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->notifyDataSetChanged()V

    .line 407
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 406
    :catch_0
    move-exception v0

    .line 409
    :cond_3
    :goto_1
    return-void
.end method
