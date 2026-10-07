.class public Lcom/android/settings/NavigationBarSettingsGuide;
.super Landroid/app/Fragment;
.source "NavigationBarSettingsGuide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;,
        Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;
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

.field private mCustomPagerAdapter:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

.field private mNavigationBarStyle:I

.field private mPosition:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->isOnPaused:Z

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide;->dot_imgs:Ljava/util/ArrayList;

    .line 58
    iput-boolean v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->cycleRunAnim:Z

    .line 60
    iput v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mPosition:I

    .line 70
    iput v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mNavigationBarStyle:I

    .line 214
    new-instance v0, Lcom/android/settings/NavigationBarSettingsGuide$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NavigationBarSettingsGuide$2;-><init>(Lcom/android/settings/NavigationBarSettingsGuide;)V

    iput-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NavigationBarSettingsGuide;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettingsGuide;

    .line 50
    iget v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/NavigationBarSettingsGuide;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettingsGuide;
    .param p1, "x1"    # I

    .line 50
    iput p1, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mPosition:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/settings/NavigationBarSettingsGuide;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettingsGuide;

    .line 50
    iget v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/NavigationBarSettingsGuide;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettingsGuide;

    .line 50
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->dot_imgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/NavigationBarSettingsGuide;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettingsGuide;
    .param p1, "x1"    # I

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/NavigationBarSettingsGuide;->setIndicator(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/NavigationBarSettingsGuide;)Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettingsGuide;

    .line 50
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mCustomPagerAdapter:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/NavigationBarSettingsGuide;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettingsGuide;

    .line 50
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/NavigationBarSettingsGuide;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettingsGuide;

    .line 50
    iget-boolean v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->cycleRunAnim:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/NavigationBarSettingsGuide;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettingsGuide;
    .param p1, "x1"    # Z

    .line 50
    iput-boolean p1, p0, Lcom/android/settings/NavigationBarSettingsGuide;->cycleRunAnim:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/settings/NavigationBarSettingsGuide;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NavigationBarSettingsGuide;
    .param p1, "x1"    # I

    .line 50
    iput p1, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mNavigationBarStyle:I

    return p1
.end method

.method private setIndicator(I)V
    .locals 4
    .param p1, "position"    # I

    .line 273
    const/4 v0, 0x0

    move v1, v0

    .local v1, "inum":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide;->dot_imgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide;->dot_imgs:Ljava/util/ArrayList;

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

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v1
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 73
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsl_full_screen_mode_switch_action"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mNavigationBarStyle:I

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 36
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 80
    if-eqz v7, :cond_0

    .line 81
    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 83
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/NavigationBarSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 84
    .local v8, "activity":Landroid/app/Activity;
    const v0, 0x7f0d013b

    const/4 v1, 0x0

    move-object/from16 v9, p1

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 85
    .local v10, "parent":Landroid/view/View;
    const v0, 0x7f0a04e2

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 86
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 87
    const/4 v12, 0x1

    iput v12, v6, Lcom/android/settings/NavigationBarSettingsGuide;->mPosition:I

    .line 88
    iput-boolean v12, v6, Lcom/android/settings/NavigationBarSettingsGuide;->cycleRunAnim:Z

    .line 89
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 91
    .local v13, "vpCellDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;>;"
    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 92
    .local v14, "sizeW":I
    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 93
    .local v15, "sizeH":I
    new-instance v5, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;

    .line 94
    const v4, 0x7f120b57

    invoke-virtual {v8, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    const v1, 0x7f120b53

    invoke-virtual {v8, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v0, 0x6

    new-array v2, v0, [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v25, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v19, "QQAnim/action2"

    const/16 v20, 0x1

    const/16 v21, 0x64

    const/16 v22, 0x0

    const/16 v23, 0xa

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v18, v25

    move-object/from16 v24, v0

    invoke-direct/range {v18 .. v24}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v0, 0x0

    aput-object v25, v2, v0

    new-instance v25, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v19, "QQAnim/action2"

    const/16 v20, 0x19

    const/16 v23, 0x1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v18, v25

    move-object/from16 v24, v0

    invoke-direct/range {v18 .. v24}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v25, v2, v12

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v29, "QQAnim/action2"

    const/16 v30, 0x1

    const/16 v31, 0x64

    const/16 v32, 0x18

    const/16 v33, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v28, v0

    move-object/from16 v34, v1

    invoke-direct/range {v28 .. v34}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x2

    aput-object v0, v2, v1

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v19, "QQAnim/action2"

    const/16 v20, 0x1

    const/16 v23, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v18, v0

    move-object/from16 v24, v1

    invoke-direct/range {v18 .. v24}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/16 v18, 0x3

    aput-object v0, v2, v18

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v20, "QQAnim/action2"

    const/16 v21, 0x19

    const/16 v22, 0x64

    const/16 v23, 0x0

    const/16 v24, 0x1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v0

    move-object/from16 v25, v1

    invoke-direct/range {v19 .. v25}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v2, v11

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v29, "QQAnim/action2"

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v28, v0

    move-object/from16 v34, v1

    invoke-direct/range {v28 .. v34}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/16 v19, 0x5

    aput-object v0, v2, v19

    const/4 v1, 0x0

    const/4 v11, 0x6

    move-object v0, v5

    move v11, v1

    const/4 v12, 0x2

    move-object v1, v6

    move-object/from16 v17, v2

    const/4 v2, 0x2

    move-object/from16 v4, v16

    move-object v11, v5

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;-><init>(Lcom/android/settings/NavigationBarSettingsGuide;ILjava/lang/String;Ljava/lang/String;[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;)V

    .line 93
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v11, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;

    const/4 v2, 0x0

    .line 105
    const v5, 0x7f120b55

    invoke-virtual {v8, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    const v4, 0x7f120b51

    invoke-virtual {v8, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-array v1, v12, [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/action0"

    const/16 v22, 0x37

    const/16 v23, 0x50

    const/16 v24, 0x0

    const/16 v25, 0x1

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v0

    move-object/from16 v26, v4

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v4, 0x0

    aput-object v0, v1, v4

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/action0"

    const/16 v22, 0x1

    const/16 v24, 0x36

    const/16 v25, 0xa

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v0

    move-object/from16 v26, v4

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v4, 0x1

    aput-object v0, v1, v4

    move-object v0, v11

    move-object/from16 v17, v1

    move-object v1, v6

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;-><init>(Lcom/android/settings/NavigationBarSettingsGuide;ILjava/lang/String;Ljava/lang/String;[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;)V

    .line 104
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v11, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;

    const/4 v2, 0x1

    const v0, 0x7f120b56

    .line 112
    invoke-virtual {v8, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120b52

    .line 113
    invoke-virtual {v8, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x6

    new-array v5, v0, [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/action1"

    const/16 v23, 0x64

    const/16 v24, 0x0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v0

    move-object/from16 v26, v1

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x0

    aput-object v0, v5, v1

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/action1"

    const/16 v22, 0xf

    const/16 v25, 0x1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v0

    move-object/from16 v26, v1

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x1

    aput-object v0, v5, v1

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/action1"

    const/16 v22, 0x1

    const/16 v24, 0xe

    const/16 v25, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v0

    move-object/from16 v26, v1

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v12

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v27, "QQAnim/action1"

    const/16 v28, 0x1

    const/16 v29, 0x64

    const/16 v30, 0x0

    const/16 v31, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v26, v0

    move-object/from16 v32, v1

    invoke-direct/range {v26 .. v32}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v18

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/action1"

    const/16 v22, 0xf

    const/16 v24, 0x0

    const/16 v25, 0x1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v0

    move-object/from16 v26, v1

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x4

    aput-object v0, v5, v1

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/action1"

    const/16 v22, 0x1

    const/16 v24, 0xe

    const/16 v25, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v0

    move-object/from16 v26, v1

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v19

    move-object v0, v11

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;-><init>(Lcom/android/settings/NavigationBarSettingsGuide;ILjava/lang/String;Ljava/lang/String;[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;)V

    .line 111
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v11, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;

    const/4 v2, 0x2

    .line 123
    const v0, 0x7f120b57

    invoke-virtual {v8, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 124
    const v0, 0x7f120b53

    invoke-virtual {v8, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x6

    new-array v5, v0, [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/action2"

    const/16 v24, 0x0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v0

    move-object/from16 v26, v1

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x0

    aput-object v0, v5, v1

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/action2"

    const/16 v22, 0x19

    const/16 v25, 0x1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v0

    move-object/from16 v26, v1

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x1

    aput-object v0, v5, v1

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/action2"

    const/16 v22, 0x1

    const/16 v24, 0x18

    const/16 v25, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v0

    move-object/from16 v26, v1

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v12

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v27, "QQAnim/action2"

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v26, v0

    move-object/from16 v32, v1

    invoke-direct/range {v26 .. v32}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v18

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/action2"

    const/16 v22, 0x19

    const/16 v24, 0x0

    const/16 v25, 0x1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v0

    move-object/from16 v26, v1

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x4

    aput-object v0, v5, v1

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/action2"

    const/16 v22, 0x1

    const/16 v24, 0x18

    const/16 v25, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v0

    move-object/from16 v26, v1

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v0, v5, v19

    move-object v0, v11

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;-><init>(Lcom/android/settings/NavigationBarSettingsGuide;ILjava/lang/String;Ljava/lang/String;[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;)V

    .line 122
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v11, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;

    const/4 v2, 0x0

    .line 134
    const v0, 0x7f120b55

    invoke-virtual {v8, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    const v0, 0x7f120b51

    invoke-virtual {v8, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v17, "QQAnim/action0"

    const/16 v18, 0x37

    const/16 v19, 0x50

    const/16 v20, 0x0

    const/16 v21, 0x1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v16, v0

    move-object/from16 v22, v1

    invoke-direct/range {v16 .. v22}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x0

    aput-object v0, v5, v1

    new-instance v0, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v17, "QQAnim/action0"

    const/16 v18, 0x1

    const/16 v20, 0x36

    const/16 v21, 0xa

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v16, v0

    move-object/from16 v22, v1

    invoke-direct/range {v16 .. v22}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    const/4 v1, 0x1

    aput-object v0, v5, v1

    move-object v0, v11

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/NavigationBarSettingsGuide$VPCellData;-><init>(Lcom/android/settings/NavigationBarSettingsGuide;ILjava/lang/String;Ljava/lang/String;[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;)V

    .line 133
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->dot_imgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->dot_imgs:Ljava/util/ArrayList;

    const v1, 0x7f0a049f

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->dot_imgs:Ljava/util/ArrayList;

    const v1, 0x7f0a04a0

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->dot_imgs:Ljava/util/ArrayList;

    const v1, 0x7f0a04a1

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const/4 v0, 0x0

    .local v0, "inum":I
    :goto_0
    iget-object v1, v6, Lcom/android/settings/NavigationBarSettingsGuide;->dot_imgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 145
    iget-object v1, v6, Lcom/android/settings/NavigationBarSettingsGuide;->dot_imgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, v6, Lcom/android/settings/NavigationBarSettingsGuide;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v0
    :cond_1
    iget v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->mPosition:I

    invoke-direct {v6, v0}, Lcom/android/settings/NavigationBarSettingsGuide;->setIndicator(I)V

    .line 148
    new-instance v0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/NavigationBarSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v6, v1, v13}, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;-><init>(Lcom/android/settings/NavigationBarSettingsGuide;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->mCustomPagerAdapter:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    .line 149
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, v6, Lcom/android/settings/NavigationBarSettingsGuide;->mCustomPagerAdapter:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 150
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, v6, Lcom/android/settings/NavigationBarSettingsGuide;->mPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 151
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/settings/NavigationBarSettingsGuide$1;

    invoke-direct {v1, v6}, Lcom/android/settings/NavigationBarSettingsGuide$1;-><init>(Lcom/android/settings/NavigationBarSettingsGuide;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 204
    const v0, 0x7f0a009f

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->btn_no_navigation_bar:Landroid/widget/TextView;

    .line 205
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->btn_no_navigation_bar:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/android/settings/NavigationBarSettingsGuide;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v0, 0x7f0a009a

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->btn_have_navigation_bar:Landroid/widget/TextView;

    .line 207
    iget-object v0, v6, Lcom/android/settings/NavigationBarSettingsGuide;->btn_have_navigation_bar:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/android/settings/NavigationBarSettingsGuide;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/NavigationBarSettingsGuide;->updateNavigationBarStatus()V

    .line 211
    .end local v13
    .end local v14
    .end local v15
    :cond_2
    return-object v10
.end method

.method public onDestroyView()V
    .locals 3

    .line 280
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 281
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsl_full_screen_mode_switch_action"

    iget v2, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mNavigationBarStyle:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/NavigationBarSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 283
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 284
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 286
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 337
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->isOnPaused:Z

    .line 339
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 318
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->isOnPaused:Z

    .line 321
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mCustomPagerAdapter:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 323
    .local v1, "size":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 325
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 326
    const v3, 0x7f0a028a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/QQAssetAnimView;

    .line 327
    .local v3, "qqAssetAnimView":Lcom/android/settings/widget/QQAssetAnimView;
    if-eqz v3, :cond_0

    .line 328
    invoke-virtual {v3}, Lcom/android/settings/widget/QQAssetAnimView;->forceRestartSelfPauseAnim()V

    .line 323
    .end local v2
    .end local v3
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 312
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 314
    return-void
.end method

.method public updateNavigationBarStatus()V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->btn_no_navigation_bar:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mNavigationBarStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide;->btn_have_navigation_bar:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/NavigationBarSettingsGuide;->mNavigationBarStyle:I

    if-eq v1, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 266
    return-void
.end method
