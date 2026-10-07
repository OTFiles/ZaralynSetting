.class Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;)V
    .locals 0

    .line 1294
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p2, "x1"    # Lcom/android/settingslib/applications/ApplicationsState$1;

    .line 1294
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settingslib/applications/ApplicationsState;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1317
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1318
    .local v0, "actionStr":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1319
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1320
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 1321
    .local v3, "pkgName":Ljava/lang/String;
    nop

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1322
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/android/settingslib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    .line 1321
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1324
    .end local v1
    .end local v2
    .end local v3
    :cond_0
    goto/16 :goto_6

    :cond_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1325
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1326
    .restart local v1
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 1327
    .restart local v3
    nop

    .restart local v2
    :goto_1
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1328
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/android/settingslib/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    .line 1327
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1330
    .end local v1
    .end local v2
    .end local v3
    :cond_2
    goto/16 :goto_6

    :cond_3
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1331
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1332
    .restart local v1
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 1333
    .restart local v3
    nop

    .restart local v2
    :goto_2
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1334
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 1333
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1336
    .end local v1
    .end local v2
    .end local v3
    :cond_4
    goto/16 :goto_6

    :cond_5
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1337
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 1357
    :cond_6
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, -0x2710

    if-eqz v1, :cond_7

    .line 1358
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->access$700(Lcom/android/settingslib/applications/ApplicationsState;I)V

    goto :goto_6

    .line 1359
    :cond_7
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1360
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->access$800(Lcom/android/settingslib/applications/ApplicationsState;I)V

    goto :goto_6

    .line 1344
    :cond_8
    :goto_3
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1345
    .local v1, "pkgList":[Ljava/lang/String;
    if-eqz v1, :cond_d

    array-length v3, v1

    if-nez v3, :cond_9

    goto :goto_7

    .line 1349
    :cond_9
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1350
    .local v3, "avail":Z
    if-eqz v3, :cond_b

    .line 1351
    array-length v4, v1

    move v5, v2

    :goto_4
    if-ge v5, v4, :cond_b

    aget-object v6, v1, v5

    .line 1352
    .local v6, "pkgName":Ljava/lang/String;
    move v7, v2

    .local v7, "i":I
    :goto_5
    iget-object v8, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 1353
    iget-object v8, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v9, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v6, v9}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 1352
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1351
    .end local v6
    .end local v7
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1357
    .end local v1
    .end local v3
    :cond_b
    nop

    .line 1362
    :cond_c
    :goto_6
    return-void

    .line 1347
    .restart local v1
    :cond_d
    :goto_7
    return-void
.end method

.method registerReceiver()V
    .locals 4

    .line 1296
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1297
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1298
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1299
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1300
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1302
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1303
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1304
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1305
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1307
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1308
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1309
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1310
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1311
    return-void
.end method

.method unregisterReceiver()V
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1314
    return-void
.end method
