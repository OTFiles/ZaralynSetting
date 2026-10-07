.class Lcom/android/settings/notification/NotificationAppListSettings$7;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 625
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 628
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 629
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 630
    .local v1, "start":J
    invoke-static {}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "NotificationAppList"

    const-string v4, "Collecting apps..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v3}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 632
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v3}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1700(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 635
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v3, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    .line 638
    invoke-static {v4}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1800(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/content/pm/LauncherApps;

    move-result-object v4

    const/4 v5, 0x0

    .line 639
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 638
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 640
    .local v4, "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-static {}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1600()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "NotificationAppList"

    const-string v6, "  launchable activities:"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherActivityInfo;

    .line 642
    .local v6, "lai":Landroid/content/pm/LauncherActivityInfo;
    invoke-static {}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1600()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "NotificationAppList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_2
    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    .end local v6
    goto :goto_0

    .line 646
    :cond_3
    iget-object v5, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    .line 647
    invoke-static {v5}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1900(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationAppListSettings;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v5

    .line 648
    .local v5, "resolvedConfigActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1600()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "NotificationAppList"

    const-string v7, "  config activities:"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 650
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1600()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "NotificationAppList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_5
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    .end local v7
    goto :goto_1

    .line 655
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 656
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 657
    .local v8, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v9}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 659
    goto :goto_2

    .line 662
    :cond_7
    iget-object v9, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v9}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1900(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v10}, Lcom/android/settings/notification/NotificationAppListSettings;->access$2000(Lcom/android/settings/notification/NotificationAppListSettings;)Lcom/android/settings/notification/NotificationAppListSettings$Backend;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lcom/android/settings/notification/NotificationAppListSettings;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationAppListSettings$Backend;)Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    move-result-object v9

    .line 663
    .local v9, "row":Lcom/android/settings/notification/NotificationAppListSettings$AppRow;
    iget-object v10, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v10}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    .end local v7
    .end local v8
    .end local v9
    goto :goto_2

    .line 667
    :cond_8
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1900(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v7}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/android/settings/notification/NotificationAppListSettings;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 670
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAppListSettings;->access$300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 671
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 672
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_a

    .line 674
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 675
    .local v7, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v8}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    .line 676
    .local v8, "approw":Lcom/android/settings/notification/NotificationAppListSettings$AppRow;
    if-eqz v8, :cond_9

    iget-object v9, v8, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->pkg:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/settings/notification/NotificationAppListSettings;->filterPkg(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 677
    iget-object v9, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v9}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1700(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v7
    .end local v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 679
    :catch_0
    move-exception v7

    .line 680
    :cond_9
    :goto_4
    goto :goto_3

    .line 683
    .end local v6
    :cond_a
    goto :goto_7

    .line 684
    :cond_b
    :try_start_2
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 685
    .restart local v6
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_e

    .line 687
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 688
    .restart local v7
    iget-object v8, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v8}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    .line 689
    .restart local v8
    if-eqz v8, :cond_d

    iget-object v9, v8, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->pkg:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/settings/notification/NotificationAppListSettings;->filterPkg(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 690
    iget-object v9, v8, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->pkg:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v10}, Lcom/android/settings/notification/NotificationAppListSettings;->access$300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 691
    iget-object v9, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v9}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1700(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 692
    :cond_c
    iget-object v9, v8, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->label:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v10}, Lcom/android/settings/notification/NotificationAppListSettings;->access$300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 693
    iget-object v9, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v9}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1700(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v7
    .end local v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 696
    :catch_1
    move-exception v7

    .line 697
    :cond_d
    :goto_6
    goto :goto_5

    .line 702
    .end local v6
    :cond_e
    :goto_7
    :try_start_4
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1700(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {}, Lcom/android/settings/notification/NotificationAppListSettings;->access$2100()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 704
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 705
    const/4 v6, 0x0

    .line 706
    .local v6, "section":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v7}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1700(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;

    .line 707
    .local v8, "r":Lcom/android/settings/notification/NotificationAppListSettings$AppRow;
    iget-object v9, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    iget-object v10, v8, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->label:Ljava/lang/CharSequence;

    invoke-static {v9, v10}, Lcom/android/settings/notification/NotificationAppListSettings;->access$2200(Lcom/android/settings/notification/NotificationAppListSettings;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->section:Ljava/lang/String;

    .line 708
    iget-object v9, v8, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 709
    iget-object v9, v8, Lcom/android/settings/notification/NotificationAppListSettings$AppRow;->section:Ljava/lang/String;

    move-object v6, v9

    .line 710
    iget-object v9, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v9}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    .end local v8
    :cond_f
    goto :goto_8

    .line 713
    :cond_10
    iget-object v7, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v7}, Lcom/android/settings/notification/NotificationAppListSettings;->access$500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/settings/notification/NotificationAppListSettings$7$1;

    invoke-direct {v8, p0}, Lcom/android/settings/notification/NotificationAppListSettings$7$1;-><init>(Lcom/android/settings/notification/NotificationAppListSettings$7;)V

    const-wide/16 v9, 0xa

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 721
    iget-object v7, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v7}, Lcom/android/settings/notification/NotificationAppListSettings;->access$500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v8}, Lcom/android/settings/notification/NotificationAppListSettings;->access$2300(Lcom/android/settings/notification/NotificationAppListSettings;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 722
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    .line 723
    .local v7, "elapsed":J
    invoke-static {}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1600()Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v9, "NotificationAppList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Collected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/settings/notification/NotificationAppListSettings$7;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v11}, Lcom/android/settings/notification/NotificationAppListSettings;->access$1500(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " apps in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .end local v1
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    :cond_11
    monitor-exit v0

    .line 725
    return-void

    .line 724
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
