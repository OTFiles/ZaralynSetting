.class public Lcom/android/settings/NavigationBarSettings;
.super Landroid/app/Fragment;
.source "NavigationBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;,
        Lcom/android/settings/NavigationBarSettings$VPCellData;
    }
.end annotation


# instance fields
.field private btn_have_navigation_bar:Landroid/widget/TextView;

.field private btn_no_navigation_bar:Landroid/widget/TextView;

.field private cycleRunAnim:Z

.field private dot_imgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public isOnPaused:Z

.field private mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mCustomPagerAdapter:Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;

.field private mPosition:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/NavigationBarSettings;->isOnPaused:Z

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/NavigationBarSettings;->dot_imgs:Ljava/util/ArrayList;

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/NavigationBarSettings;->cycleRunAnim:Z

    .line 58
    iput v0, p0, Lcom/android/settings/NavigationBarSettings;->mPosition:I

    .line 206
    new-instance v0, Lcom/android/settings/NavigationBarSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NavigationBarSettings$2;-><init>(Lcom/android/settings/NavigationBarSettings;)V

    iput-object v0, p0, Lcom/android/settings/NavigationBarSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NavigationBarSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettings;

    .line 48
    iget v0, p0, Lcom/android/settings/NavigationBarSettings;->mPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/NavigationBarSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettings;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/android/settings/NavigationBarSettings;->mPosition:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/settings/NavigationBarSettings;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettings;

    .line 48
    iget v0, p0, Lcom/android/settings/NavigationBarSettings;->mPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/NavigationBarSettings;->mPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/NavigationBarSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettings;

    .line 48
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings;->dot_imgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/NavigationBarSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettings;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/NavigationBarSettings;->setIndicator(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/NavigationBarSettings;)Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettings;

    .line 48
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings;->mCustomPagerAdapter:Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/NavigationBarSettings;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettings;

    .line 48
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/NavigationBarSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettings;

    .line 48
    iget-boolean v0, p0, Lcom/android/settings/NavigationBarSettings;->cycleRunAnim:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/NavigationBarSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettings;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/settings/NavigationBarSettings;->cycleRunAnim:Z

    return p1
.end method

.method private setIndicator(I)V
    .locals 4
    .param p1, "position"    # I

    .line 263
    const/4 v0, 0x0

    move v1, v0

    .local v1, "inum":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettings;->dot_imgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettings;->dot_imgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    add-int/lit8 v3, v1, 0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v1
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 69
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 35
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v6, p0

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/NavigationBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 76
    .local v7, "activity":Landroid/app/Activity;
    const v0, 0x7f0d013a

    const/4 v1, 0x0

    move-object/from16 v8, p1

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 77
    .local v9, "parent":Landroid/view/View;
    const v0, 0x7f0a04e2

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, v6, Lcom/android/settings/NavigationBarSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 78
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 79
    const/4 v11, 0x1

    iput v11, v6, Lcom/android/settings/NavigationBarSettings;->mPosition:I

    .line 80
    iput-boolean v11, v6, Lcom/android/settings/NavigationBarSettings;->cycleRunAnim:Z

    .line 81
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 83
    .local v12, "vpCellDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/NavigationBarSettings$VPCellData;>;"
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 84
    .local v13, "sizeW":I
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 85
    .local v14, "sizeH":I
    new-instance v15, Lcom/android/settings/NavigationBarSettings$VPCellData;

    const/4 v2, 0x2

    .line 86
    const v5, 0x7f120b57

    invoke-virtual {v7, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    const v4, 0x7f120b53

    invoke-virtual {v7, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x6

    new-array v0, v1, [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v24, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v18, "QQAnim/action2"

    const/16 v19, 0x1

    const/16 v20, 0x64

    const/16 v21, 0x0

    const/16 v22, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v17, v24

    move-object/from16 v23, v1

    invoke-direct/range {v17 .. v23}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x0

    aput-object v24, v0, v1

    new-instance v24, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v18, "QQAnim/action2"

    const/16 v19, 0x19

    const/16 v22, 0x1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v17, v24

    move-object/from16 v23, v1

    invoke-direct/range {v17 .. v23}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v24, v0, v11

    new-instance v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v28, "QQAnim/action2"

    const/16 v29, 0x1

    const/16 v30, 0x64

    const/16 v31, 0x18

    const/16 v32, 0xa

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v27, v1

    move-object/from16 v33, v4

    invoke-direct/range {v27 .. v33}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v18, "QQAnim/action2"

    const/16 v19, 0x1

    const/16 v22, 0xa

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v17, v1

    move-object/from16 v23, v4

    invoke-direct/range {v17 .. v23}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/16 v17, 0x3

    aput-object v1, v0, v17

    new-instance v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v19, "QQAnim/action2"

    const/16 v20, 0x19

    const/16 v21, 0x64

    const/16 v22, 0x0

    const/16 v23, 0x1

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v18, v1

    move-object/from16 v24, v4

    invoke-direct/range {v18 .. v24}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v28, "QQAnim/action2"

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v27, v1

    move-object/from16 v33, v4

    invoke-direct/range {v27 .. v33}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/16 v18, 0x5

    aput-object v1, v0, v18

    move-object/from16 v19, v0

    move-object v0, v15

    const/4 v4, 0x0

    const/4 v10, 0x6

    move-object v1, v6

    move v10, v4

    const/4 v11, 0x2

    move-object/from16 v4, v16

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/NavigationBarSettings$VPCellData;-><init>(Lcom/android/settings/NavigationBarSettings;ILjava/lang/String;Ljava/lang/String;[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;)V

    .line 85
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v15, Lcom/android/settings/NavigationBarSettings$VPCellData;

    const/4 v2, 0x0

    .line 97
    const v5, 0x7f120b55

    invoke-virtual {v7, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 98
    const v4, 0x7f120b51

    invoke-virtual {v7, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-array v1, v11, [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v20, "QQAnim/action0"

    const/16 v21, 0x37

    const/16 v22, 0x50

    const/16 v23, 0x0

    const/16 v24, 0x1

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v0

    move-object/from16 v25, v4

    invoke-direct/range {v19 .. v25}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v1, v10

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v26, "QQAnim/action0"

    const/16 v27, 0x1

    const/16 v28, 0x50

    const/16 v29, 0x36

    const/16 v30, 0xa

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v25, v0

    move-object/from16 v31, v4

    invoke-direct/range {v25 .. v31}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v4, 0x1

    aput-object v0, v1, v4

    move-object v0, v15

    move-object/from16 v19, v1

    move-object v1, v6

    move-object/from16 v4, v16

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/NavigationBarSettings$VPCellData;-><init>(Lcom/android/settings/NavigationBarSettings;ILjava/lang/String;Ljava/lang/String;[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;)V

    .line 96
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v15, Lcom/android/settings/NavigationBarSettings$VPCellData;

    const/4 v2, 0x1

    const v0, 0x7f120b56

    .line 104
    invoke-virtual {v7, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120b52

    .line 105
    invoke-virtual {v7, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x6

    new-array v5, v0, [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v20, "QQAnim/action1"

    const/16 v21, 0x1

    const/16 v22, 0x64

    const/16 v24, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v0

    move-object/from16 v25, v1

    invoke-direct/range {v19 .. v25}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v10

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v26, "QQAnim/action1"

    const/16 v27, 0xf

    const/16 v28, 0x64

    const/16 v29, 0x0

    const/16 v30, 0x1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v25, v0

    move-object/from16 v31, v1

    invoke-direct/range {v25 .. v31}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x1

    aput-object v0, v5, v1

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v20, "QQAnim/action1"

    const/16 v23, 0xe

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v0

    move-object/from16 v25, v1

    invoke-direct/range {v19 .. v25}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v11

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v26, "QQAnim/action1"

    const/16 v27, 0x1

    const/16 v30, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v25, v0

    move-object/from16 v31, v1

    invoke-direct/range {v25 .. v31}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v17

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v20, "QQAnim/action1"

    const/16 v21, 0xf

    const/16 v23, 0x0

    const/16 v24, 0x1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v0

    move-object/from16 v25, v1

    invoke-direct/range {v19 .. v25}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x4

    aput-object v0, v5, v1

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v20, "QQAnim/action1"

    const/16 v21, 0x1

    const/16 v23, 0xe

    const/16 v24, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v0

    move-object/from16 v25, v1

    invoke-direct/range {v19 .. v25}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v18

    move-object v0, v15

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/NavigationBarSettings$VPCellData;-><init>(Lcom/android/settings/NavigationBarSettings;ILjava/lang/String;Ljava/lang/String;[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;)V

    .line 103
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v15, Lcom/android/settings/NavigationBarSettings$VPCellData;

    const/4 v2, 0x2

    .line 115
    const v0, 0x7f120b57

    invoke-virtual {v7, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    const v0, 0x7f120b53

    invoke-virtual {v7, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x6

    new-array v5, v0, [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v20, "QQAnim/action2"

    const/16 v23, 0x0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v0

    move-object/from16 v25, v1

    invoke-direct/range {v19 .. v25}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v10

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v26, "QQAnim/action2"

    const/16 v27, 0x19

    const/16 v30, 0x1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v25, v0

    move-object/from16 v31, v1

    invoke-direct/range {v25 .. v31}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x1

    aput-object v0, v5, v1

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v20, "QQAnim/action2"

    const/16 v23, 0x18

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v0

    move-object/from16 v25, v1

    invoke-direct/range {v19 .. v25}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v11

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v26, "QQAnim/action2"

    const/16 v27, 0x1

    const/16 v30, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v25, v0

    move-object/from16 v31, v1

    invoke-direct/range {v25 .. v31}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v17

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v20, "QQAnim/action2"

    const/16 v21, 0x19

    const/16 v23, 0x0

    const/16 v24, 0x1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v0

    move-object/from16 v25, v1

    invoke-direct/range {v19 .. v25}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x4

    aput-object v0, v5, v1

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v20, "QQAnim/action2"

    const/16 v21, 0x1

    const/16 v23, 0x18

    const/16 v24, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v0

    move-object/from16 v25, v1

    invoke-direct/range {v19 .. v25}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v18

    move-object v0, v15

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/NavigationBarSettings$VPCellData;-><init>(Lcom/android/settings/NavigationBarSettings;ILjava/lang/String;Ljava/lang/String;[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;)V

    .line 114
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v15, Lcom/android/settings/NavigationBarSettings$VPCellData;

    const/4 v2, 0x0

    .line 126
    const v0, 0x7f120b55

    invoke-virtual {v7, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    const v0, 0x7f120b51

    invoke-virtual {v7, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v17, "QQAnim/action0"

    const/16 v18, 0x37

    const/16 v19, 0x50

    const/16 v20, 0x0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v16, v0

    move-object/from16 v22, v1

    invoke-direct/range {v16 .. v22}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v10

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v23, "QQAnim/action0"

    const/16 v24, 0x1

    const/16 v25, 0x50

    const/16 v26, 0x36

    const/16 v27, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v22, v0

    move-object/from16 v28, v1

    invoke-direct/range {v22 .. v28}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x1

    aput-object v0, v5, v1

    move-object v0, v15

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/NavigationBarSettings$VPCellData;-><init>(Lcom/android/settings/NavigationBarSettings;ILjava/lang/String;Ljava/lang/String;[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;)V

    .line 125
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettings;->dot_imgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettings;->dot_imgs:Ljava/util/ArrayList;

    const v1, 0x7f0a049f

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettings;->dot_imgs:Ljava/util/ArrayList;

    const v1, 0x7f0a04a0

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettings;->dot_imgs:Ljava/util/ArrayList;

    const v1, 0x7f0a04a1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    move v0, v10

    .local v0, "inum":I
    :goto_0
    iget-object v1, v6, Lcom/android/settings/NavigationBarSettings;->dot_imgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 137
    iget-object v1, v6, Lcom/android/settings/NavigationBarSettings;->dot_imgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, v6, Lcom/android/settings/NavigationBarSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0
    :cond_0
    iget v0, v6, Lcom/android/settings/NavigationBarSettings;->mPosition:I

    invoke-direct {v6, v0}, Lcom/android/settings/NavigationBarSettings;->setIndicator(I)V

    .line 140
    new-instance v0, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/NavigationBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v6, v1, v12}, Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;-><init>(Lcom/android/settings/NavigationBarSettings;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, v6, Lcom/android/settings/NavigationBarSettings;->mCustomPagerAdapter:Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;

    .line 141
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, v6, Lcom/android/settings/NavigationBarSettings;->mCustomPagerAdapter:Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 142
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, v6, Lcom/android/settings/NavigationBarSettings;->mPosition:I

    invoke-virtual {v0, v1, v10}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 143
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/settings/NavigationBarSettings$1;

    invoke-direct {v1, v6}, Lcom/android/settings/NavigationBarSettings$1;-><init>(Lcom/android/settings/NavigationBarSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 196
    const v0, 0x7f0a009f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/NavigationBarSettings;->btn_no_navigation_bar:Landroid/widget/TextView;

    .line 197
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettings;->btn_no_navigation_bar:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/android/settings/NavigationBarSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v0, 0x7f0a009a

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/NavigationBarSettings;->btn_have_navigation_bar:Landroid/widget/TextView;

    .line 199
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettings;->btn_have_navigation_bar:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/android/settings/NavigationBarSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/NavigationBarSettings;->updateNavigationBarStatus()V

    .line 203
    .end local v12
    .end local v13
    .end local v14
    :cond_1
    return-object v9
.end method

.method public onDestroyView()V
    .locals 0

    .line 270
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 272
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 323
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/NavigationBarSettings;->isOnPaused:Z

    .line 325
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 304
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/NavigationBarSettings;->isOnPaused:Z

    .line 307
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettings;->mCustomPagerAdapter:Lcom/android/settings/NavigationBarSettings$CustomPagerAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/NavigationBarSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 309
    .local v1, "size":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 310
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 311
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 312
    const v3, 0x7f0a028a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/QQAssetAnimView;

    .line 313
    .local v3, "qqAssetAnimView":Lcom/android/settings/widget/QQAssetAnimView;
    if-eqz v3, :cond_0

    .line 314
    invoke-virtual {v3}, Lcom/android/settings/widget/QQAssetAnimView;->forceRestartSelfPauseAnim()V

    .line 309
    .end local v2
    .end local v3
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 298
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 300
    return-void
.end method

.method public updateNavigationBarStatus()V
    .locals 5

    .line 253
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsl_full_screen_mode_switch_action"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 254
    .local v0, "iRet":I
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettings;->btn_no_navigation_bar:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 255
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettings;->btn_have_navigation_bar:Landroid/widget/TextView;

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 256
    return-void
.end method
