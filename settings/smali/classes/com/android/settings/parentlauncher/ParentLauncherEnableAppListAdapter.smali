.class public Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ParentLauncherEnableAppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;,
        Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllAppDataCell:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/parentlauncher/AppDataCell;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFilterNbHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/parentlauncher/AppDataCell;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterTag:Ljava/lang/String;

.field private mFunClickListener:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mLauncherParentLauncherEnablePkgNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgHandler:Landroid/os/Handler;

.field public mWhiteFilterOrder:Ljava/util/Comparator;

.field private nowNbItemDataCell:Lcom/android/settings/parentlauncher/AppDataCell;

.field private pkgManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "msgHandler"    # Landroid/os/Handler;
    .param p4, "onClickListener"    # Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/parentlauncher/AppDataCell;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;",
            ")V"
        }
    .end annotation

    .line 68
    .local p2, "arrData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/parentlauncher/AppDataCell;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->nowNbItemDataCell:Lcom/android/settings/parentlauncher/AppDataCell;

    .line 61
    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFilterTag:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mLauncherParentLauncherEnablePkgNameList:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$1;-><init>(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mWhiteFilterOrder:Ljava/util/Comparator;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mContext:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    iput-object p3, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mMsgHandler:Landroid/os/Handler;

    .line 72
    iput-object p4, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFunClickListener:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;

    .line 73
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->readSystemDbLauncherParentLauncherNames()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    .line 44
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFunClickListener:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    .line 44
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    .line 44
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getAllAppParentLauncher(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/parentlauncher/ParentLauncherCell;",
            ">;"
        }
    .end annotation

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v0, "allParentLauncherPkgNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/parentlauncher/ParentLauncherCell;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 545
    .local v1, "startTime":J
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.android.readboylauncher.settings"

    const-string v5, "com.android.readboyprimarylauncher.settings"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 546
    .local v3, "authorityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 547
    const/4 v4, 0x0

    move v5, v4

    .local v5, "inum":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 548
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->getLauncherAppParentLauncher(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 549
    .local v6, "pkgNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/parentlauncher/ParentLauncherCell;>;"
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 550
    move v7, v4

    .local v7, "icell":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 551
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/parentlauncher/ParentLauncherCell;

    invoke-virtual {v9}, Lcom/android/settings/parentlauncher/ParentLauncherCell;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 552
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 550
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 547
    .end local v6
    .end local v7
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 560
    .end local v5
    :cond_2
    return-object v0
.end method

.method public static getLauncherAppParentLauncher(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/parentlauncher/ParentLauncherCell;",
            ">;"
        }
    .end annotation

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v0, "retPkgNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/parentlauncher/ParentLauncherCell;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    return-object v0

    .line 574
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/favorites?notify=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "url":Ljava/lang/String;
    const/4 v2, 0x0

    .line 577
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 578
    .local v4, "contentUri":Landroid/net/Uri;
    const-string v3, "title"

    const-string v5, "iconPackage"

    const-string v6, "itemType"

    const-string v7, "intent"

    filled-new-array {v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    .line 579
    .local v5, "columns":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "itemType=1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 581
    if-eqz v2, :cond_5

    .line 582
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 583
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 584
    const-string v3, "title"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 585
    .local v3, "columnindex_title":I
    const-string v6, "iconPackage"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 586
    .local v6, "columnindex_iconPackage":I
    const-string v7, "itemType"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 587
    .local v7, "columnindex_itemType":I
    const-string v8, "intent"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 589
    .local v8, "columnindex_intent":I
    :cond_1
    new-instance v9, Lcom/android/settings/parentlauncher/ParentLauncherCell;

    invoke-direct {v9}, Lcom/android/settings/parentlauncher/ParentLauncherCell;-><init>()V

    .line 591
    .local v9, "parentLauncherCell":Lcom/android/settings/parentlauncher/ParentLauncherCell;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings/parentlauncher/ParentLauncherCell;->title:Ljava/lang/String;

    .line 592
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings/parentlauncher/ParentLauncherCell;->iconPackage:Ljava/lang/String;

    .line 593
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings/parentlauncher/ParentLauncherCell;->intent:Landroid/content/Intent;

    .line 594
    iget-object v10, v9, Lcom/android/settings/parentlauncher/ParentLauncherCell;->intent:Landroid/content/Intent;

    if-eqz v10, :cond_2

    iget-object v10, v9, Lcom/android/settings/parentlauncher/ParentLauncherCell;->iconPackage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 595
    iget-object v10, v9, Lcom/android/settings/parentlauncher/ParentLauncherCell;->intent:Landroid/content/Intent;

    invoke-static {v10}, Lcom/android/settings/parentlauncher/ParentLauncherCell;->getTargetPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings/parentlauncher/ParentLauncherCell;->iconPackage:Ljava/lang/String;

    .line 597
    :cond_2
    invoke-virtual {v9}, Lcom/android/settings/parentlauncher/ParentLauncherCell;->isInitSucess()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/settings/parentlauncher/ParentLauncherCell;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 598
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    goto :goto_0

    .line 600
    :catch_0
    move-exception v10

    .line 602
    .end local v9
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 606
    .end local v3
    .end local v6
    .end local v7
    .end local v8
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 607
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    .line 611
    .end local v4
    .end local v5
    :cond_5
    if-eqz v2, :cond_7

    .line 613
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 614
    :catch_1
    move-exception v3

    goto :goto_3

    .line 611
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_6

    .line 613
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 615
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 614
    :catch_2
    move-exception v4

    .line 616
    :goto_1
    const/4 v2, 0x0

    :cond_6
    throw v3

    .line 609
    :catch_3
    move-exception v3

    .line 611
    if-eqz v2, :cond_7

    .line 613
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 615
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_2
    goto :goto_3

    .line 614
    :catch_4
    move-exception v3

    .line 616
    :goto_3
    const/4 v2, 0x0

    .line 619
    :cond_7
    return-object v0
.end method


# virtual methods
.method public filterNeedShowAppNames(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterValue"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFilterTag:Ljava/lang/String;

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    const/4 v0, 0x0

    .local v0, "inum":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/parentlauncher/AppDataCell;

    .line 126
    .local v1, "dataCell":Lcom/android/settings/parentlauncher/AppDataCell;
    iget-object v2, v1, Lcom/android/settings/parentlauncher/AppDataCell;->app_Name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/settings/parentlauncher/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v1
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mWhiteFilterOrder:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    return-void
.end method

.method public getAllAppNoSystemApp(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 161
    invoke-static {p1}, Lcom/android/settings/SettingsBootCompletedReceiver;->resetLauncherParentModeAppsStatusIgnoreSomeApp(Landroid/content/Context;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "arrayListPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/parentlauncher/ParentLauncherCell;>;"
    const-string v1, "404"

    invoke-static {p1, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getParentModeAllIgnoreFilterThirdApps(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 166
    .local v1, "parentAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "inum":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 167
    new-instance v4, Lcom/android/settings/parentlauncher/ParentLauncherCell;

    invoke-direct {v4}, Lcom/android/settings/parentlauncher/ParentLauncherCell;-><init>()V

    .line 168
    .local v4, "parentLauncherCell":Lcom/android/settings/parentlauncher/ParentLauncherCell;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/android/settings/parentlauncher/ParentLauncherCell;->iconPackage:Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    .end local v3
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v3, "allPkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .local v2, "iNumber":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 173
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/parentlauncher/ParentLauncherCell;

    iget-object v4, v4, Lcom/android/settings/parentlauncher/ParentLauncherCell;->iconPackage:Ljava/lang/String;

    .line 174
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 176
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    move-object v5, v6

    .line 177
    new-instance v6, Lcom/android/settings/parentlauncher/AppDataCell;

    invoke-direct {v6}, Lcom/android/settings/parentlauncher/AppDataCell;-><init>()V

    .line 178
    .local v6, "tmpInfo":Lcom/android/settings/parentlauncher/AppDataCell;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/parentlauncher/AppDataCell;->app_Name:Ljava/lang/String;

    .line 179
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/settings/parentlauncher/AppDataCell;->appPackageName:Ljava/lang/String;

    .line 180
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/settings/parentlauncher/AppDataCell;->appVersionName:Ljava/lang/String;

    .line 181
    iget v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v7, v6, Lcom/android/settings/parentlauncher/AppDataCell;->appVersionCode:I

    .line 182
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 183
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v7, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_2

    .line 186
    :catch_0
    move-exception v6

    .line 172
    .end local v4
    .end local v5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 189
    .end local v2
    :cond_2
    iget-object v2, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFilterTag:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->filterNeedShowAppNames(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFunClickListener:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;

    if-eqz v2, :cond_3

    .line 191
    iget-object v2, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFunClickListener:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;

    iget-object v4, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;->onUpdateEmptyView(I)V

    .line 193
    :cond_3
    return-void
.end method

.method public getFilterNbHistory()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/parentlauncher/AppDataCell;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Lcom/android/settings/parentlauncher/AppDataCell;
    .locals 1
    .param p1, "position"    # I

    .line 343
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/parentlauncher/AppDataCell;

    return-object v0

    .line 346
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 237
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSendedAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pakgename"    # Ljava/lang/String;

    .line 285
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 289
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 290
    .local v1, "appIcon":Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 291
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    .end local v0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSendedAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pakgename"    # Ljava/lang/String;

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 309
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 310
    .local v1, "appName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 315
    .end local v0
    .end local v1
    :cond_0
    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    .end local v0
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 44
    check-cast p1, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->onBindViewHolder(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;
    .param p2, "position"    # I

    .line 250
    invoke-virtual {p0, p2}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->getItem(I)Lcom/android/settings/parentlauncher/AppDataCell;

    move-result-object v0

    .line 251
    .local v0, "nbDataCell":Lcom/android/settings/parentlauncher/AppDataCell;
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 252
    iput-object v0, p1, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->nowDataCell:Lcom/android/settings/parentlauncher/AppDataCell;

    .line 253
    iput p2, p1, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->mPostion:I

    .line 254
    iget-object v1, p1, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/parentlauncher/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->getSendedAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/settings/parentlauncher/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->getSendedAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 256
    .local v1, "dbIcon":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 257
    iget-object v2, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 259
    :cond_0
    iget-object v2, p1, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 260
    iget-object v2, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mLauncherParentLauncherEnablePkgNameList:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/settings/parentlauncher/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 263
    .local v2, "isWSelected":Z
    iget-object v3, p1, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbChoosed:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 264
    iget-object v3, v0, Lcom/android/settings/parentlauncher/AppDataCell;->appPackageName:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    .line 265
    iget-object v3, p1, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const v4, 0x7f120b76

    goto :goto_0

    :cond_1
    const v4, 0x7f120b75

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 267
    iget-object v3, p1, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->nowDataCell:Lcom/android/settings/parentlauncher/AppDataCell;

    invoke-virtual {v3}, Lcom/android/settings/parentlauncher/AppDataCell;->isCanEnableClick()Z

    move-result v3

    .line 269
    .local v3, "isNowEnable":Z
    iget-object v4, p1, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 270
    iget-object v4, p1, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->txtNbTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 271
    if-nez v3, :cond_2

    .line 272
    iget-object v4, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mMsgHandler:Landroid/os/Handler;

    iget-object v5, p1, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x4b0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    .end local v1
    .end local v2
    .end local v3
    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 242
    new-instance v0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;

    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00c7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;-><init>(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;Landroid/view/View;)V

    .line 243
    .local v0, "holder":Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$MyViewHolder;
    return-object v0
.end method

.method public onlyUpdateAdapterNbDuibiItemStatus()V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mMsgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$2;-><init>(Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    return-void
.end method

.method public readSystemDbLauncherParentLauncherNames()V
    .locals 2

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getParentModeAppList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 481
    .local v0, "parentAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mLauncherParentLauncherEnablePkgNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 482
    iget-object v1, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mLauncherParentLauncherEnablePkgNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 485
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 486
    .end local v0
    :goto_0
    return-void
.end method

.method public saveSystemDbLauncherParentLauncherNames()V
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_shortcut_grant_list"

    iget-object v2, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mLauncherParentLauncherEnablePkgNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 473
    return-void
.end method

.method public updateNowNbStoredHistoryFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "filterValue"    # Ljava/lang/String;

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->filterNeedShowAppNames(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFunClickListener:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->mFunClickListener:Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;

    invoke-interface {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;->onUpdateStatusView()V

    .line 110
    :cond_0
    return-void
.end method
