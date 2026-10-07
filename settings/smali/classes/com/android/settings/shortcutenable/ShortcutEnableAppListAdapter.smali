.class public Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShortcutEnableAppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;,
        Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllAppDataCell:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/shortcutenable/AppDataCell;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFilterNbHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/shortcutenable/AppDataCell;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterTag:Ljava/lang/String;

.field private mFunClickListener:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mLauncherShortcutEnablePkgNameList:Ljava/util/ArrayList;
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

.field private nowNbItemDataCell:Lcom/android/settings/shortcutenable/AppDataCell;

.field private pkgManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "msgHandler"    # Landroid/os/Handler;
    .param p4, "onClickListener"    # Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/shortcutenable/AppDataCell;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;",
            ")V"
        }
    .end annotation

    .line 68
    .local p2, "arrData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/shortcutenable/AppDataCell;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->nowNbItemDataCell:Lcom/android/settings/shortcutenable/AppDataCell;

    .line 61
    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFilterTag:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mLauncherShortcutEnablePkgNameList:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$1;-><init>(Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mWhiteFilterOrder:Ljava/util/Comparator;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mContext:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    iput-object p3, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mMsgHandler:Landroid/os/Handler;

    .line 72
    iput-object p4, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFunClickListener:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;

    .line 73
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->readSystemDbLauncherShortcutNames()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;)Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    .line 44
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFunClickListener:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    .line 44
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static deleteReadboyLauncherShortcut(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/shortcutenable/LauncherShortcutCell;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "shortcutCell"    # Lcom/android/settings/shortcutenable/LauncherShortcutCell;

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 462
    .local v6, "cr":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    move-object v8, v7

    .line 464
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/favorites?notify=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "_id"

    const-string v2, "title"

    const-string v3, "iconPackage"

    const-string v4, "itemType"

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "(title=\'%s\' AND itemType=1)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->title:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v3, v9

    .line 465
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 464
    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 466
    if-eqz v8, :cond_1

    .line 467
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "?notify=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 470
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 471
    const/4 v0, 0x0

    .line 473
    .end local v8
    .local v0, "cursor":Landroid/database/Cursor;
    move-object v8, v0

    .end local v0
    .restart local v8
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/favorites?notify=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 476
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_3

    .line 478
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 479
    :catch_0
    move-exception v0

    goto :goto_3

    .line 476
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 478
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 480
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 479
    :catch_1
    move-exception v1

    .line 481
    :goto_1
    const/4 v8, 0x0

    :cond_2
    throw v0

    .line 474
    :catch_2
    move-exception v0

    .line 476
    if-eqz v8, :cond_3

    .line 478
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 480
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    goto :goto_3

    .line 479
    :catch_3
    move-exception v0

    .line 481
    :goto_3
    const/4 v8, 0x0

    .line 484
    :cond_3
    return-void
.end method

.method public static getAllAppShortcut(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/shortcutenable/LauncherShortcutCell;",
            ">;"
        }
    .end annotation

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v0, "allShortcutPkgNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/shortcutenable/LauncherShortcutCell;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 571
    .local v1, "startTime":J
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.android.readboylauncher.settings"

    const-string v5, "com.android.readboyprimarylauncher.settings"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 572
    .local v3, "authorityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 573
    const/4 v4, 0x0

    move v5, v4

    .local v5, "inum":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 574
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->getLauncherAppShortcut(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 575
    .local v6, "pkgNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/shortcutenable/LauncherShortcutCell;>;"
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 576
    move v7, v4

    .local v7, "icell":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 577
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/shortcutenable/LauncherShortcutCell;

    invoke-virtual {v9}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 578
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 576
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 573
    .end local v6
    .end local v7
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 586
    .end local v5
    :cond_2
    return-object v0
.end method

.method public static getLauncherAppShortcut(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
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
            "Lcom/android/settings/shortcutenable/LauncherShortcutCell;",
            ">;"
        }
    .end annotation

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v0, "retPkgNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/shortcutenable/LauncherShortcutCell;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    return-object v0

    .line 600
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

    .line 601
    .local v1, "url":Ljava/lang/String;
    const/4 v2, 0x0

    .line 603
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 604
    .local v4, "contentUri":Landroid/net/Uri;
    const-string v3, "title"

    const-string v5, "iconPackage"

    const-string v6, "itemType"

    const-string v7, "intent"

    filled-new-array {v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    .line 605
    .local v5, "columns":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "itemType=1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 607
    if-eqz v2, :cond_5

    .line 608
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 609
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 610
    const-string v3, "title"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 611
    .local v3, "columnindex_title":I
    const-string v6, "iconPackage"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 612
    .local v6, "columnindex_iconPackage":I
    const-string v7, "itemType"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 613
    .local v7, "columnindex_itemType":I
    const-string v8, "intent"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 615
    .local v8, "columnindex_intent":I
    :cond_1
    new-instance v9, Lcom/android/settings/shortcutenable/LauncherShortcutCell;

    invoke-direct {v9}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;-><init>()V

    .line 617
    .local v9, "shortcutCell":Lcom/android/settings/shortcutenable/LauncherShortcutCell;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->title:Ljava/lang/String;

    .line 618
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->iconPackage:Ljava/lang/String;

    .line 619
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->intent:Landroid/content/Intent;

    .line 620
    iget-object v10, v9, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->intent:Landroid/content/Intent;

    if-eqz v10, :cond_2

    iget-object v10, v9, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->iconPackage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 621
    iget-object v10, v9, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->intent:Landroid/content/Intent;

    invoke-static {v10}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->getTargetPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->iconPackage:Ljava/lang/String;

    .line 623
    :cond_2
    invoke-virtual {v9}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->isInitSucess()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 624
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    goto :goto_0

    .line 626
    :catch_0
    move-exception v10

    .line 628
    .end local v9
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 632
    .end local v3
    .end local v6
    .end local v7
    .end local v8
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 633
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    .line 637
    .end local v4
    .end local v5
    :cond_5
    if-eqz v2, :cond_7

    .line 639
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 640
    :catch_1
    move-exception v3

    goto :goto_3

    .line 637
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_6

    .line 639
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 641
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 640
    :catch_2
    move-exception v4

    .line 642
    :goto_1
    const/4 v2, 0x0

    :cond_6
    throw v3

    .line 635
    :catch_3
    move-exception v3

    .line 637
    if-eqz v2, :cond_7

    .line 639
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 641
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_2
    goto :goto_3

    .line 640
    :catch_4
    move-exception v3

    .line 642
    :goto_3
    const/4 v2, 0x0

    .line 645
    :cond_7
    return-object v0
.end method

.method public static removeLauncherShortCutEvent(Landroid/content/Context;Lcom/android/settings/shortcutenable/LauncherShortcutCell;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutCell"    # Lcom/android/settings/shortcutenable/LauncherShortcutCell;

    .line 449
    const-string v0, "com.android.readboylauncher.settings"

    invoke-static {p0, v0, p1}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->deleteReadboyLauncherShortcut(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/shortcutenable/LauncherShortcutCell;)V

    .line 450
    const-string v0, "com.android.readboyprimarylauncher.settings"

    invoke-static {p0, v0, p1}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->deleteReadboyLauncherShortcut(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/shortcutenable/LauncherShortcutCell;)V

    .line 451
    const-string v0, "com.android.readboyparentlauncher.settings"

    invoke-static {p0, v0, p1}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->deleteReadboyLauncherShortcut(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/shortcutenable/LauncherShortcutCell;)V

    .line 452
    return-void
.end method

.method public static removeLauncherShortCutEventByPkg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 418
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_shortcut_request_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "strReqList":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " %s,"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 421
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    const-string v1, "["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 423
    const-string v1, "\\}, \\{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "arrayPkgs":[Ljava/lang/String;
    nop

    .local v3, "inum":I
    :goto_0
    move v2, v3

    .end local v3
    .local v2, "inum":I
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 425
    new-instance v3, Lcom/android/settings/shortcutenable/LauncherShortcutCell;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;-><init>(Ljava/lang/String;)V

    .line 426
    .local v3, "shortcutCell":Lcom/android/settings/shortcutenable/LauncherShortcutCell;
    invoke-virtual {v3}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->isInitSucess()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->iconPackage:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    invoke-static {p0, v3}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->removeLauncherShortCutEvent(Landroid/content/Context;Lcom/android/settings/shortcutenable/LauncherShortcutCell;)V

    .line 424
    .end local v3
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2
    .local v3, "inum":I
    goto :goto_0

    .line 431
    .end local v1
    .end local v3
    :cond_1
    return-void
.end method


# virtual methods
.method public filterNeedShowAppNames(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterValue"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFilterTag:Ljava/lang/String;

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    const/4 v0, 0x0

    .local v0, "inum":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/shortcutenable/AppDataCell;

    .line 126
    .local v1, "dataCell":Lcom/android/settings/shortcutenable/AppDataCell;
    iget-object v2, v1, Lcom/android/settings/shortcutenable/AppDataCell;->app_Name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/settings/shortcutenable/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mWhiteFilterOrder:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    return-void
.end method

.method public getAllAppNoSystemApp(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 161
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_shortcut_request_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "strReqList":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v1, "arrayListPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/shortcutenable/LauncherShortcutCell;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 166
    :try_start_0
    const-string v2, "["

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "]"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 167
    const-string v2, "\\}, \\{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "arrayPkgs":[Ljava/lang/String;
    move v4, v3

    .local v4, "inum":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 169
    new-instance v5, Lcom/android/settings/shortcutenable/LauncherShortcutCell;

    aget-object v6, v2, v4

    invoke-direct {v5, v6}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    .end local v2
    .end local v4
    :cond_0
    goto :goto_1

    .line 171
    :catch_0
    move-exception v2

    .line 174
    :cond_1
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v2, "allPkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .local v3, "iNumber":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 176
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/shortcutenable/LauncherShortcutCell;

    iget-object v4, v4, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->iconPackage:Ljava/lang/String;

    .line 177
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 179
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    move-object v5, v6

    .line 180
    new-instance v6, Lcom/android/settings/shortcutenable/AppDataCell;

    invoke-direct {v6}, Lcom/android/settings/shortcutenable/AppDataCell;-><init>()V

    .line 181
    .local v6, "tmpInfo":Lcom/android/settings/shortcutenable/AppDataCell;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/shortcutenable/AppDataCell;->app_Name:Ljava/lang/String;

    .line 182
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/settings/shortcutenable/AppDataCell;->appPackageName:Ljava/lang/String;

    .line 183
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/settings/shortcutenable/AppDataCell;->appVersionName:Ljava/lang/String;

    .line 184
    iget v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v7, v6, Lcom/android/settings/shortcutenable/AppDataCell;->appVersionCode:I

    .line 185
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 186
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v7, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    goto :goto_3

    .line 189
    :catch_1
    move-exception v6

    .line 175
    .end local v4
    .end local v5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 192
    .end local v3
    :cond_3
    iget-object v3, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFilterTag:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->filterNeedShowAppNames(Ljava/lang/String;)V

    .line 193
    iget-object v3, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFunClickListener:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;

    if-eqz v3, :cond_4

    .line 194
    iget-object v3, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFunClickListener:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;

    invoke-interface {v3}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;->onUpdateEmptyView()V

    .line 196
    :cond_4
    return-void
.end method

.method public getFilterNbHistory()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/shortcutenable/AppDataCell;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Lcom/android/settings/shortcutenable/AppDataCell;
    .locals 1
    .param p1, "position"    # I

    .line 337
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/shortcutenable/AppDataCell;

    return-object v0

    .line 340
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 240
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSendedAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pakgename"    # Ljava/lang/String;

    .line 279
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 283
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 284
    .local v1, "appIcon":Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 285
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    .end local v0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSendedAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pakgename"    # Ljava/lang/String;

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 303
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 304
    .local v1, "appName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
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

    .line 309
    .end local v0
    .end local v1
    :cond_0
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    .end local v0
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 44
    check-cast p1, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->onBindViewHolder(Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;
    .param p2, "position"    # I

    .line 253
    invoke-virtual {p0, p2}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->getItem(I)Lcom/android/settings/shortcutenable/AppDataCell;

    move-result-object v0

    .line 254
    .local v0, "nbDataCell":Lcom/android/settings/shortcutenable/AppDataCell;
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 255
    iput p2, p1, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->mPostion:I

    .line 256
    iget-object v1, p1, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/shortcutenable/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->getSendedAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/settings/shortcutenable/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->getSendedAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 258
    .local v1, "dbIcon":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 261
    :cond_0
    iget-object v2, p1, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v2, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mLauncherShortcutEnablePkgNameList:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/settings/shortcutenable/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 264
    .local v2, "isWSelected":Z
    iget-object v3, p1, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbChoosed:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 265
    iget-object v3, v0, Lcom/android/settings/shortcutenable/AppDataCell;->appPackageName:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    .line 266
    iget-object v3, p1, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const v4, 0x7f120b48

    goto :goto_0

    :cond_1
    const v4, 0x7f120b47

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 267
    iget-object v3, p1, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;->txtNbStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 269
    .end local v1
    .end local v2
    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 245
    new-instance v0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;

    iget-object v1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00b7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;-><init>(Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;Landroid/view/View;)V

    .line 246
    .local v0, "holder":Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$MyViewHolder;
    return-object v0
.end method

.method public onlyUpdateAdapterNbDuibiItemStatus()V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mMsgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$2;-><init>(Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    return-void
.end method

.method public readSystemDbLauncherShortcutNames()V
    .locals 6

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_shortcut_grant_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "savedPkgNames":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mLauncherShortcutEnablePkgNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 500
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    const-string v1, "["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 502
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "arrayPkgClass":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 505
    .local v4, "sPkgClass":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mLauncherShortcutEnablePkgNameList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    .end local v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 511
    .end local v0
    .end local v1
    :cond_0
    goto :goto_1

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 512
    .end local v0
    :goto_1
    return-void
.end method

.method public saveSystemDbLauncherShortcutNames()V
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_shortcut_grant_list"

    iget-object v2, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mLauncherShortcutEnablePkgNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 491
    return-void
.end method

.method public updateNowNbStoredHistoryFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "filterValue"    # Ljava/lang/String;

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->filterNeedShowAppNames(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFunClickListener:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mFunClickListener:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;

    invoke-interface {v0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;->onUpdateStatusView()V

    .line 110
    :cond_0
    return-void
.end method
