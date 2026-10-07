.class public Lcom/android/settings/applications/appops/AppOpsState;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;,
        Lcom/android/settings/applications/appops/AppOpsState$AppEntry;,
        Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;
    }
.end annotation


# static fields
.field public static final ALL_TEMPLATES:[Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final DEVICE_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final LABEL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCATION_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final MEDIA_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final MESSAGING_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final PERSONAL_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final RECENCY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;


# instance fields
.field final mAppOps:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field final mOpSummaries:[Ljava/lang/CharSequence;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 97
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v1, v1, [Z

    fill-array-data v1, :array_1

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 114
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v1, 0x8

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    new-array v1, v1, [Z

    fill-array-data v1, :array_3

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 133
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v1, 0x9

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    new-array v1, v1, [Z

    fill-array-data v1, :array_5

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 154
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v1, 0xf

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    const/16 v2, 0xe

    new-array v2, v2, [Z

    fill-array-data v2, :array_7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 186
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v1, 0xa

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    new-array v1, v1, [Z

    fill-array-data v1, :array_9

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 209
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x3f

    aput v4, v2, v3

    new-array v4, v1, [Z

    aput-boolean v3, v4, v3

    invoke-direct {v0, v2, v4}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 214
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    sget-object v2, Lcom/android/settings/applications/appops/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/settings/applications/appops/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    .line 437
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/appops/AppOpsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->RECENCY_COMPARATOR:Ljava/util/Comparator;

    .line 460
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$2;

    invoke-direct {v0}, Lcom/android/settings/applications/appops/AppOpsState$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->LABEL_COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x1d
        0x1e
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0xe
        0x10
        0x11
        0x12
        0x13
        0xf
        0x14
        0x15
        0x16
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 4
        0x3
        0x1a
        0x1b
        0x1c
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x40
        0x2c
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 4
        0xb
        0x19
        0xd
        0x17
        0x18
        0x28
        0x2e
        0x2f
        0x31
        0x32
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsState;->mContext:Landroid/content/Context;

    .line 55
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    .line 59
    return-void
.end method

.method private addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 8
    .param p2, "pkgOps"    # Landroid/app/AppOpsManager$PackageOps;
    .param p3, "appEntry"    # Lcom/android/settings/applications/appops/AppOpsState$AppEntry;
    .param p4, "opEntry"    # Landroid/app/AppOpsManager$OpEntry;
    .param p5, "allowMerge"    # Z
    .param p6, "switchOrder"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$PackageOps;",
            "Lcom/android/settings/applications/appops/AppOpsState$AppEntry;",
            "Landroid/app/AppOpsManager$OpEntry;",
            "ZI)V"
        }
    .end annotation

    .line 471
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;>;"
    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 472
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    .line 473
    .local v0, "last":Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;
    invoke-virtual {v0}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v2

    if-ne v2, p3, :cond_2

    .line 474
    invoke-virtual {v0}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 475
    .local v2, "lastExe":Z
    :goto_0
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 476
    .local v1, "entryExe":Z
    :goto_1
    if-ne v2, v1, :cond_2

    .line 479
    invoke-virtual {v0, p4}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    .line 480
    return-void

    .line 484
    .end local v0
    .end local v1
    .end local v2
    :cond_2
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 485
    .local v0, "entry":Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;
    if-eqz v0, :cond_3

    .line 486
    invoke-virtual {v0, p4}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    .line 487
    return-void

    .line 489
    :cond_3
    new-instance v1, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    invoke-direct {v1, p2, p4, p3, p6}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;I)V

    move-object v0, v1

    .line 492
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    return-void
.end method

.method private getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/AppOpsState$AppEntry;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/appops/AppOpsState$AppEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Lcom/android/settings/applications/appops/AppOpsState$AppEntry;"
        }
    .end annotation

    .line 505
    .local p2, "appEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    .line 506
    .local v0, "appEntry":Lcom/android/settings/applications/appops/AppOpsState$AppEntry;
    if-nez v0, :cond_1

    .line 507
    if-nez p4, :cond_0

    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const v2, 0x400200

    invoke-virtual {v1, p3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, v1

    .line 515
    goto :goto_0

    .line 512
    :catch_0
    move-exception v1

    .line 513
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppOpsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find info for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v2, 0x0

    return-object v2

    .line 517
    .end local v1
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    invoke-direct {v1, p0, p4}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;-><init>(Lcom/android/settings/applications/appops/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    move-object v0, v1

    .line 518
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->loadLabel(Landroid/content/Context;)V

    .line 519
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_1
    return-object v0
.end method


# virtual methods
.method public buildState(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;)Ljava/util/List;
    .locals 36
    .param p1, "tpl"    # Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    .line 530
    iget-object v11, v8, Lcom/android/settings/applications/appops/AppOpsState;->mContext:Landroid/content/Context;

    .line 532
    .local v11, "context":Landroid/content/Context;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v12, v0

    .line 533
    .local v12, "appEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 535
    .local v13, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 536
    .local v14, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 537
    .local v15, "permOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v0, 0x4e

    new-array v7, v0, [I

    .line 538
    .local v7, "opToOrder":[I
    const/4 v6, 0x0

    move v0, v6

    .local v0, "i":I
    :goto_0
    iget-object v1, v9, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 539
    iget-object v1, v9, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->showPerms:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, v9, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "perm":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 542
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v2, v9, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v2, v9, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v0

    aput v0, v7, v2

    .line 538
    .end local v1
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    .end local v0
    :cond_1
    if-eqz v10, :cond_2

    .line 551
    iget-object v0, v8, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, v9, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    move/from16 v5, p2

    invoke-virtual {v0, v5, v10, v1}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_1

    .line 553
    .end local v0
    :cond_2
    move/from16 v5, p2

    iget-object v0, v8, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, v9, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .restart local v0
    :goto_1
    move-object v4, v0

    .line 556
    .end local v0
    .local v4, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    const/16 v16, 0x1

    if-eqz v4, :cond_7

    .line 557
    move v0, v6

    .local v0, "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 558
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/AppOpsManager$PackageOps;

    .line 559
    .local v3, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v8, v11, v12, v1, v2}, Lcom/android/settings/applications/appops/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v17

    .line 560
    .local v17, "appEntry":Lcom/android/settings/applications/appops/AppOpsState$AppEntry;
    if-nez v17, :cond_3

    .line 561
    nop

    .line 557
    move-object/from16 v23, v4

    move v9, v6

    move-object/from16 v18, v7

    goto :goto_6

    .line 563
    :cond_3
    move v1, v6

    .local v1, "j":I
    :goto_3
    move v2, v1

    .end local v1
    .local v2, "j":I
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 564
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    .line 565
    .local v1, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    if-nez v10, :cond_4

    .line 566
    move/from16 v18, v16

    goto :goto_4

    .line 565
    :cond_4
    nop

    .line 566
    move/from16 v18, v6

    :goto_4
    if-nez v10, :cond_5

    .line 565
    move/from16 v19, v6

    goto :goto_5

    .line 566
    :cond_5
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v19

    aget v19, v7, v19

    .line 565
    :goto_5
    move-object/from16 v20, v1

    move-object v1, v8

    .end local v1
    .local v20, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    move/from16 v21, v2

    move-object v2, v13

    .end local v2
    .local v21, "j":I
    move-object/from16 v22, v3

    .end local v3
    .local v22, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    move-object/from16 v23, v4

    move-object/from16 v4, v17

    .end local v4
    .local v23, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    move-object/from16 v5, v20

    move v9, v6

    move/from16 v6, v18

    move-object/from16 v18, v7

    move/from16 v7, v19

    .end local v7
    .local v18, "opToOrder":[I
    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/appops/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    .line 563
    .end local v20
    add-int/lit8 v1, v21, 0x1

    .end local v21
    .local v1, "j":I
    move/from16 v5, p2

    move v6, v9

    move-object/from16 v7, v18

    move-object/from16 v4, v23

    move-object/from16 v9, p1

    goto :goto_3

    .line 557
    .end local v1
    .end local v17
    .end local v18
    .end local v22
    .end local v23
    .restart local v4
    .restart local v7
    :cond_6
    move-object/from16 v23, v4

    move v9, v6

    move-object/from16 v18, v7

    .end local v4
    .end local v7
    .restart local v18
    .restart local v23
    :goto_6
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, p2

    move v6, v9

    move-object/from16 v7, v18

    move-object/from16 v4, v23

    move-object/from16 v9, p1

    goto :goto_2

    .line 572
    .end local v0
    .end local v18
    .end local v23
    .restart local v4
    .restart local v7
    :cond_7
    move-object/from16 v23, v4

    move v9, v6

    move-object/from16 v18, v7

    .end local v4
    .end local v7
    .restart local v18
    .restart local v23
    if-eqz v10, :cond_8

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 575
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    iget-object v0, v8, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v0, v10, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 576
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 577
    :catch_0
    move-exception v0

    .line 578
    :goto_7
    goto :goto_8

    .line 580
    .end local v1
    :cond_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 581
    .local v0, "permsArray":[Ljava/lang/String;
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 582
    iget-object v1, v8, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v9}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .end local v0
    .restart local v1
    :goto_8
    move-object v0, v1

    .line 584
    .end local v1
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move v1, v9

    .local v1, "i":I
    :goto_9
    move v7, v1

    .end local v1
    .local v7, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_12

    .line 585
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 586
    .local v6, "appInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, v11, v12, v1, v2}, Lcom/android/settings/applications/appops/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v5

    .line 588
    .local v5, "appEntry":Lcom/android/settings/applications/appops/AppOpsState$AppEntry;
    if-nez v5, :cond_9

    .line 589
    nop

    .line 584
    move-object/from16 v24, v0

    move/from16 v17, v7

    goto/16 :goto_12

    .line 591
    :cond_9
    const/4 v1, 0x0

    .line 592
    .local v1, "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v2, 0x0

    .line 593
    .local v2, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 594
    move-object v3, v2

    move-object v2, v1

    move v1, v9

    .local v1, "j":I
    .local v2, "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v3
    :goto_a
    move v4, v1

    .end local v1
    .local v4, "j":I
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v1

    if-ge v4, v1, :cond_11

    .line 595
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v1, :cond_a

    .line 596
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v1, v1, v4

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_a

    .line 600
    nop

    .line 594
    move-object/from16 v24, v0

    move/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v26, v6

    move/from16 v17, v7

    goto/16 :goto_11

    .line 605
    :cond_a
    move v1, v9

    .local v1, "k":I
    :goto_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_10

    .line 606
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .end local v0
    .local v24, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    aget-object v0, v0, v4

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 607
    goto :goto_c

    .line 611
    :cond_b
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->hasOp(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 612
    nop

    .line 605
    :goto_c
    move/from16 v20, v1

    move/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v26, v6

    move/from16 v17, v7

    goto/16 :goto_10

    .line 614
    :cond_c
    if-nez v2, :cond_d

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 616
    new-instance v0, Landroid/app/AppOpsManager$PackageOps;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v3

    iget-object v3, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .end local v3
    .local v25, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v9, v3, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 620
    .end local v25
    .local v0, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    move-object/from16 v25, v0

    move-object v0, v2

    goto :goto_d

    .end local v0
    .restart local v3
    :cond_d
    move-object/from16 v25, v3

    move-object v0, v2

    .end local v2
    .end local v3
    .local v0, "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v25
    :goto_d
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    .line 621
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, -0x1

    const/16 v35, 0x0

    move-object/from16 v26, v2

    invoke-direct/range {v26 .. v35}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    move-object v9, v2

    .line 622
    .local v9, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    if-nez v10, :cond_e

    .line 624
    move/from16 v17, v16

    goto :goto_e

    .line 623
    :cond_e
    nop

    .line 624
    const/16 v17, 0x0

    :goto_e
    if-nez v10, :cond_f

    .line 623
    const/16 v19, 0x0

    goto :goto_f

    .line 624
    :cond_f
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v2

    aget v2, v18, v2

    .line 623
    move/from16 v19, v2

    :goto_f
    move/from16 v20, v1

    move-object v1, v8

    .end local v1
    .local v20, "k":I
    move-object v2, v13

    move-object/from16 v3, v25

    move/from16 v21, v4

    move-object v4, v5

    .end local v4
    .restart local v21
    move-object/from16 v22, v5

    move-object v5, v9

    .end local v5
    .local v22, "appEntry":Lcom/android/settings/applications/appops/AppOpsState$AppEntry;
    move-object/from16 v26, v6

    move/from16 v6, v17

    .end local v6
    .local v26, "appInfo":Landroid/content/pm/PackageInfo;
    move/from16 v17, v7

    move/from16 v7, v19

    .end local v7
    .local v17, "i":I
    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/appops/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    .line 605
    .end local v9
    move-object v2, v0

    .end local v0
    .end local v25
    .restart local v2
    .restart local v3
    :goto_10
    add-int/lit8 v1, v20, 0x1

    .end local v20
    .restart local v1
    move/from16 v7, v17

    move/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v0, v24

    move-object/from16 v6, v26

    const/4 v9, 0x0

    goto/16 :goto_b

    .line 594
    .end local v1
    .end local v17
    .end local v21
    .end local v22
    .end local v24
    .end local v26
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v4
    .restart local v5
    .restart local v6
    .restart local v7
    :cond_10
    move-object/from16 v24, v0

    move-object/from16 v25, v3

    move/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v26, v6

    move/from16 v17, v7

    .end local v0
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .restart local v17
    .restart local v21
    .restart local v22
    .restart local v24
    .restart local v26
    :goto_11
    add-int/lit8 v1, v21, 0x1

    .end local v21
    .local v1, "j":I
    move/from16 v7, v17

    move-object/from16 v5, v22

    move-object/from16 v0, v24

    move-object/from16 v6, v26

    const/4 v9, 0x0

    goto/16 :goto_a

    .line 584
    .end local v1
    .end local v2
    .end local v3
    .end local v17
    .end local v22
    .end local v24
    .end local v26
    .restart local v0
    .restart local v7
    :cond_11
    move-object/from16 v24, v0

    move/from16 v17, v7

    .end local v0
    .end local v7
    .restart local v17
    .restart local v24
    :goto_12
    add-int/lit8 v1, v17, 0x1

    .end local v17
    .local v1, "i":I
    move-object/from16 v0, v24

    const/4 v9, 0x0

    goto/16 :goto_9

    .line 631
    .end local v1
    .end local v24
    .restart local v0
    :cond_12
    move-object/from16 v24, v0

    .end local v0
    .restart local v24
    move-object/from16 v1, p4

    invoke-static {v13, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 634
    return-object v13
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method
