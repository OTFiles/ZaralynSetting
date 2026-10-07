.class public Landroid/support/v13/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/app/FragmentTabHost$SavedState;,
        Landroid/support/v13/app/FragmentTabHost$TabInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v13/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 131
    invoke-direct {p0, p1, v0}, Landroid/support/v13/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/support/v13/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "newTab":Landroid/support/v13/app/FragmentTabHost$TabInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 367
    iget-object v2, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v13/app/FragmentTabHost$TabInfo;

    .line 368
    .local v2, "tab":Landroid/support/v13/app/FragmentTabHost$TabInfo;
    iget-object v3, v2, Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    move-object v0, v2

    .line 366
    .end local v2
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v1
    :cond_1
    if-eqz v0, :cond_7

    .line 375
    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    if-eq v1, v0, :cond_6

    .line 376
    if-nez p2, :cond_2

    .line 377
    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 379
    :cond_2
    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    if-eqz v1, :cond_3

    .line 380
    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    iget-object v1, v1, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-eqz v1, :cond_3

    .line 381
    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    iget-object v1, v1, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 384
    :cond_3
    if-eqz v0, :cond_5

    .line 385
    iget-object v1, v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-nez v1, :cond_4

    .line 386
    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 387
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    .line 386
    invoke-static {v1, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    .line 388
    iget v1, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

    iget-object v2, v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    iget-object v3, v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 390
    :cond_4
    iget-object v1, v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 394
    :cond_5
    :goto_1
    iput-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    .line 396
    :cond_6
    return-object p2

    .line 373
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No tab known for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 144
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100f3

    aput v2, v0, v1

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 150
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 275
    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "currentTab":Ljava/lang/String;
    const/4 v1, 0x0

    .line 280
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 281
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;

    .line 282
    .local v3, "tab":Landroid/support/v13/app/FragmentTabHost$TabInfo;
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v5, v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    .line 283
    iget-object v4, v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_2

    .line 284
    iget-object v4, v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    iput-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    goto :goto_1

    .line 292
    :cond_0
    if-nez v1, :cond_1

    .line 293
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 295
    :cond_1
    iget-object v4, v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 280
    .end local v3
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v2
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v13/app/FragmentTabHost;->mAttached:Z

    .line 303
    invoke-direct {p0, v0, v1}, Landroid/support/v13/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_4

    .line 305
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 306
    iget-object v2, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 308
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v13/app/FragmentTabHost;->mAttached:Z

    .line 318
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    instance-of v0, p1, Landroid/support/v13/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_0

    .line 339
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 340
    return-void

    .line 342
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v13/app/FragmentTabHost$SavedState;

    .line 343
    .local v0, "ss":Landroid/support/v13/app/FragmentTabHost$SavedState;
    invoke-virtual {v0}, Landroid/support/v13/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 344
    iget-object v1, v0, Landroid/support/v13/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v13/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 327
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/v13/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v13/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 328
    .local v1, "ss":Landroid/support/v13/app/FragmentTabHost$SavedState;
    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v13/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    .line 329
    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "tabId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 353
    iget-boolean v0, p0, Landroid/support/v13/app/FragmentTabHost;->mAttached:Z

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v13/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 355
    .local v0, "ft":Landroid/app/FragmentTransaction;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 359
    .end local v0
    :cond_0
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 362
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/TabHost$OnTabChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 239
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
