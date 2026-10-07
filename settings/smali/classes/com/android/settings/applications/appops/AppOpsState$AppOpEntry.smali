.class public Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppOpEntry"
.end annotation


# instance fields
.field private final mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

.field private final mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOverriddenPrimaryMode:I

.field private final mPkgOps:Landroid/app/AppOpsManager$PackageOps;

.field private final mSwitchOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwitchOrder:I


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;I)V
    .locals 1
    .param p1, "pkg"    # Landroid/app/AppOpsManager$PackageOps;
    .param p2, "op"    # Landroid/app/AppOpsManager$OpEntry;
    .param p3, "app"    # Lcom/android/settings/applications/appops/AppOpsState$AppEntry;
    .param p4, "switchOrder"    # I

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    .line 314
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOverriddenPrimaryMode:I

    .line 318
    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mPkgOps:Landroid/app/AppOpsManager$PackageOps;

    .line 319
    iput-object p3, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    .line 320
    iput p4, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mSwitchOrder:I

    .line 321
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    invoke-virtual {v0, p0, p2}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->addOp(Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method private static addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V
    .locals 6
    .param p1, "op"    # Landroid/app/AppOpsManager$OpEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$OpEntry;",
            ")V"
        }
    .end annotation

    .line 327
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 328
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    .line 329
    .local v1, "pos":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 330
    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 332
    return-void

    .line 336
    :cond_0
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 337
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 338
    return-void

    .line 327
    .end local v1
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    .end local v0
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    return-void
.end method


# virtual methods
.method public addOp(Landroid/app/AppOpsManager$OpEntry;)V
    .locals 2
    .param p1, "op"    # Landroid/app/AppOpsManager$OpEntry;

    .line 345
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->addOp(Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    .line 350
    :cond_0
    return-void
.end method

.method public getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    return-object v0
.end method

.method public getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;
    .locals 1
    .param p1, "pos"    # I

    .line 369
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    return-object v0
.end method

.method public getPrimaryOpMode()I
    .locals 2

    .line 373
    iget v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOverriddenPrimaryMode:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOverriddenPrimaryMode:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSwitchOrder()I
    .locals 1

    .line 357
    iget v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mSwitchOrder:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "showEmptyText"    # Z

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const v0, 0x7f120144

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v1

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    const/high16 v7, 0x40000

    .line 413
    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 418
    :cond_1
    if-eqz p2, :cond_2

    const v0, 0x7f120143

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v0

    return v0
.end method

.method public overridePrimaryOpMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 377
    iput p1, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mOverriddenPrimaryMode:I

    .line 378
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    invoke-virtual {v0}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
