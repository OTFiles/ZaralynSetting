.class public Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NbWhiteAppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;,
        Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final filterFreeApp:[Ljava/lang/String;

.field public static final filterFullApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllAppDataCell:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/porttapplandshow/AppDataCell;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFilterNbHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/porttapplandshow/AppDataCell;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterTag:Ljava/lang/String;

.field private mFunClickListener:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMsgHandler:Landroid/os/Handler;

.field public mPorttAppLandshowPkgNameList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWhiteFilterOrder:Ljava/util/Comparator;

.field private nowNbItemDataCell:Lcom/android/settings/porttapplandshow/AppDataCell;

.field private pkgManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 159
    const-string v0, "com.android."

    const-string v1, "com.readboy."

    const-string v2, "cn.readboy."

    const-string v3, "com.dream."

    const-string v4, "cn.dream."

    const-string v5, "android.dream."

    const-string v6, "android.process.media"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->filterFreeApp:[Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.iflytek.speechcloud"

    const-string v2, "com.sohu.inputmethod.sogouoem"

    const-string v3, "com.sensetime.humanaction"

    const-string v4, "com.netcom.testdram"

    const-string v5, "com.dream.agingtest"

    const-string v6, "cn.wps.moffice_eng"

    const-string v7, "com.adobe.air"

    const-string v8, "com.sim.cit"

    const-string v9, "com.dinghmcn.android.wificonnectclient"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->filterFullApp:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "msgHandler"    # Landroid/os/Handler;
    .param p4, "onClickListener"    # Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/porttapplandshow/AppDataCell;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;",
            ")V"
        }
    .end annotation

    .line 70
    .local p2, "arrData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/porttapplandshow/AppDataCell;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->nowNbItemDataCell:Lcom/android/settings/porttapplandshow/AppDataCell;

    .line 57
    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFilterTag:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mPorttAppLandshowPkgNameList:Ljava/util/HashMap;

    .line 137
    new-instance v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$1;-><init>(Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mWhiteFilterOrder:Ljava/util/Comparator;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mContext:Landroid/content/Context;

    .line 72
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    iput-object p3, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mMsgHandler:Landroid/os/Handler;

    .line 74
    iput-object p4, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFunClickListener:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;

    .line 75
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->readSystemDbProttAppLandShowNames()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    .line 40
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFunClickListener:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->queryAllLauncherAppClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isNeedFilterFreeApp(Ljava/lang/String;)Z
    .locals 7
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->filterFullApp:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 182
    return v1

    .line 184
    :cond_0
    sget-object v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->filterFreeApp:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 185
    .local v5, "appname":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    return v1

    .line 184
    .end local v5
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    :cond_2
    return v3
.end method

.method private queryAllLauncherAppClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "forcusPkgName"    # Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v0, "iSB":Ljava/lang/StringBuilder;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 272
    .local v1, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v2, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 276
    .local v2, "resolveinfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 277
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .end local v4
    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 281
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public filterNeedShowAppNames(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterValue"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFilterTag:Ljava/lang/String;

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    const/4 v0, 0x0

    .local v0, "inum":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 126
    iget-object v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/porttapplandshow/AppDataCell;

    .line 128
    .local v1, "dataCell":Lcom/android/settings/porttapplandshow/AppDataCell;
    iget-object v2, v1, Lcom/android/settings/porttapplandshow/AppDataCell;->app_Name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/settings/porttapplandshow/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v1
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mWhiteFilterOrder:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    return-void
.end method

.method public getAllAppNoSystemApp(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v0, p0

    .line 197
    iget-object v1, v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 198
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v3, v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.alibaba.android.rimet"

    const-string v5, "com.tencent.mobileqq"

    const-string v6, "com.tencent.mm"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 204
    .local v3, "notFilterApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Integer;

    .line 205
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    .line 206
    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 207
    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v5, v8

    .line 208
    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v5, v8

    .line 204
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    .local v4, "allFilterProp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v5, "allPkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v7, v2

    .local v7, "iNumber":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 212
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 214
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v9, v6

    if-nez v9, :cond_2

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 215
    invoke-static {v9}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->isNeedFilterFreeApp(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 217
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v9, "resolveIntent":Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v10, v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v9, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 221
    .local v10, "resolveinfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 222
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 223
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v13, v13, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 225
    .local v13, "screenOrientation":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 226
    :cond_0
    new-instance v14, Lcom/android/settings/porttapplandshow/AppDataCell;

    invoke-direct {v14}, Lcom/android/settings/porttapplandshow/AppDataCell;-><init>()V

    .line 227
    .local v14, "tmpInfo":Lcom/android/settings/porttapplandshow/AppDataCell;
    iget-object v15, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v15, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/settings/porttapplandshow/AppDataCell;->app_Name:Ljava/lang/String;

    .line 228
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, v14, Lcom/android/settings/porttapplandshow/AppDataCell;->appPackageName:Ljava/lang/String;

    .line 229
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v14, Lcom/android/settings/porttapplandshow/AppDataCell;->appVersionName:Ljava/lang/String;

    .line 230
    iget v2, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, v14, Lcom/android/settings/porttapplandshow/AppDataCell;->appVersionCode:I

    .line 231
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v2, v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mAllAppDataCell:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v12
    .end local v13
    .end local v14
    :cond_1
    nop

    .line 222
    const/4 v2, 0x0

    goto :goto_1

    .line 211
    .end local v8
    .end local v9
    .end local v10
    :cond_2
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 240
    .end local v7
    :cond_3
    iget-object v2, v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFilterTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->filterNeedShowAppNames(Ljava/lang/String;)V

    .line 241
    iget-object v2, v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFunClickListener:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;

    if-eqz v2, :cond_4

    .line 242
    iget-object v2, v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFunClickListener:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;

    invoke-interface {v2}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;->onUpdateEmptyView()V

    .line 244
    :cond_4
    return-void
.end method

.method public getFilterNbHistory()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/porttapplandshow/AppDataCell;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Lcom/android/settings/porttapplandshow/AppDataCell;
    .locals 1
    .param p1, "position"    # I

    .line 437
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/porttapplandshow/AppDataCell;

    return-object v0

    .line 440
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFilterNbHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 329
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSendedAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pakgename"    # Ljava/lang/String;

    .line 379
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 383
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 384
    .local v1, "appIcon":Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 385
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 388
    .end local v0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSendedAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pakgename"    # Ljava/lang/String;

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 403
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->pkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 404
    .local v1, "appName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
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

    .line 409
    .end local v0
    .end local v1
    :cond_0
    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    .end local v0
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 40
    check-cast p1, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->onBindViewHolder(Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;
    .param p2, "position"    # I

    .line 342
    invoke-virtual {p0, p2}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->getItem(I)Lcom/android/settings/porttapplandshow/AppDataCell;

    move-result-object v0

    .line 343
    .local v0, "nbDataCell":Lcom/android/settings/porttapplandshow/AppDataCell;
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 344
    iput p2, p1, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->mPostion:I

    .line 345
    iget-object v1, p1, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/porttapplandshow/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->getSendedAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/settings/porttapplandshow/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->getSendedAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 347
    .local v1, "dbIcon":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 348
    iget-object v2, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 350
    :cond_0
    iget-object v2, p1, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object v2, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mPorttAppLandshowPkgNameList:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/settings/porttapplandshow/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 353
    .local v2, "isWSelected":Z
    iget-object v3, p1, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbChoosed:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 354
    iget-object v3, v0, Lcom/android/settings/porttapplandshow/AppDataCell;->appPackageName:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->mPkgName:Ljava/lang/String;

    .line 355
    iget-object v3, p1, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const v4, 0x7f120a0d

    goto :goto_0

    :cond_1
    const v4, 0x7f120a0c

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 356
    iget-object v3, p1, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;->txtNbStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 358
    .end local v1
    .end local v2
    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 334
    new-instance v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;

    iget-object v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00b7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;-><init>(Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;Landroid/view/View;)V

    .line 335
    .local v0, "holder":Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$MyViewHolder;
    return-object v0
.end method

.method public onlyUpdateAdapterNbDuibiItemStatus()V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mMsgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$2;-><init>(Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    return-void
.end method

.method public readSystemDbProttAppLandShowNames()V
    .locals 10

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "saved_portt_app_landshow_packagenames"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "savedPkgNames":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mPorttAppLandshowPkgNameList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 527
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    const-string v1, "[{}]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 529
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "arrayPkgClass":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 531
    .local v5, "sPkgClass":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 532
    .local v6, "msCell":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mPorttAppLandshowPkgNameList:Ljava/util/HashMap;

    aget-object v8, v6, v3

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .end local v5
    .end local v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 538
    .end local v0
    .end local v1
    :cond_0
    goto :goto_1

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 539
    .end local v0
    :goto_1
    return-void
.end method

.method public saveSystemDbProttAppLandShowNames()V
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "saved_portt_app_landshow_packagenames"

    iget-object v2, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mPorttAppLandshowPkgNameList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 518
    return-void
.end method

.method public updateNowNbStoredHistoryFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "filterValue"    # Ljava/lang/String;

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->filterNeedShowAppNames(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFunClickListener:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mFunClickListener:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;

    invoke-interface {v0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$OnNbNotifyHistoryListener;->onUpdateStatusView()V

    .line 112
    :cond_0
    return-void
.end method
