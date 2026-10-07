.class public Lcom/android/settings/widget/EntityHeaderController;
.super Ljava/lang/Object;
.source "EntityHeaderController.java"


# instance fields
.field private mAction1:I

.field private mAction2:I

.field private final mActivity:Landroid/app/Activity;

.field private final mAppContext:Landroid/content/Context;

.field private mAppNotifPrefIntent:Landroid/content/Intent;

.field private mEditRuleNameOnClickListener:Landroid/view/View$OnClickListener;

.field private final mFragment:Landroid/app/Fragment;

.field private mHasAppInfoLink:Z

.field private final mHeader:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconContentDescription:Ljava/lang/String;

.field private mIsInstantApp:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private final mMetricsCategory:I

.field private mPackageName:Ljava/lang/String;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSecondSummary:Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/CharSequence;

.field private mUid:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "header"    # Landroid/view/View;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    .line 114
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mActivity:Landroid/app/Activity;

    .line 115
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/android/settings/widget/EntityHeaderController;->mFragment:Landroid/app/Fragment;

    .line 117
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mMetricsCategory:I

    .line 119
    if-eqz p3, :cond_0

    .line 120
    iput-object p3, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01a0

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    .line 125
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/EntityHeaderController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/EntityHeaderController;

    .line 58
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/EntityHeaderController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/EntityHeaderController;

    .line 58
    iget v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/EntityHeaderController;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/EntityHeaderController;

    .line 58
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/EntityHeaderController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/EntityHeaderController;

    .line 58
    iget v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mMetricsCategory:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/EntityHeaderController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/EntityHeaderController;

    .line 58
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/widget/EntityHeaderController;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/EntityHeaderController;

    .line 58
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppNotifPrefIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private bindAppInfoLink(Landroid/view/View;)V
    .locals 2
    .param p1, "entityHeaderContent"    # Landroid/view/View;

    .line 281
    iget-boolean v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHasAppInfoLink:Z

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    const-string v1, "os"

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 292
    :cond_1
    new-instance v0, Lcom/android/settings/widget/EntityHeaderController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/EntityHeaderController$1;-><init>(Lcom/android/settings/widget/EntityHeaderController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    return-void

    .line 289
    :cond_2
    :goto_0
    const-string v0, "AppDetailFeature"

    const-string v1, "Missing ingredients to build app info link, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method private bindButton(Landroid/widget/ImageButton;I)V
    .locals 3
    .param p1, "button"    # Landroid/widget/ImageButton;
    .param p2, "action"    # I

    .line 338
    if-nez p1, :cond_0

    .line 339
    return-void

    .line 341
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p2, :pswitch_data_0

    .line 374
    return-void

    .line 343
    :pswitch_0    # 0x2
    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mEditRuleNameOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_1

    .line 344
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 346
    :cond_1
    const v1, 0x7f0801a4

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 347
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mEditRuleNameOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    :goto_0
    return-void

    .line 353
    :pswitch_1    # 0x1
    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppNotifPrefIntent:Landroid/content/Intent;

    if-nez v2, :cond_2

    .line 354
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 356
    :cond_2
    new-instance v1, Lcom/android/settings/widget/EntityHeaderController$2;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/EntityHeaderController$2;-><init>(Lcom/android/settings/widget/EntityHeaderController;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 367
    :goto_1
    return-void

    .line 370
    :pswitch_2    # 0x0
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 371
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public static newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "header"    # Landroid/view/View;

    .line 110
    new-instance v0, Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method

.method private setText(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 378
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 379
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    :cond_1
    return-void
.end method


# virtual methods
.method public bindHeaderButtons()Lcom/android/settings/widget/EntityHeaderController;
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v1, 0x7f0a016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, "entityHeaderContent":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v2, 0x1020019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 273
    .local v1, "button1":Landroid/widget/ImageButton;
    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v3, 0x102001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 274
    .local v2, "button2":Landroid/widget/ImageButton;
    invoke-direct {p0, v0}, Lcom/android/settings/widget/EntityHeaderController;->bindAppInfoLink(Landroid/view/View;)V

    .line 275
    iget v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction1:I

    invoke-direct {p0, v1, v3}, Lcom/android/settings/widget/EntityHeaderController;->bindButton(Landroid/widget/ImageButton;I)V

    .line 276
    iget v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction2:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->bindButton(Landroid/widget/ImageButton;I)V

    .line 277
    return-object p0
.end method

.method done(Landroid/app/Activity;)Landroid/view/View;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 334
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public done(Landroid/app/Activity;Z)Landroid/view/View;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rebindActions"    # Z

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EntityHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;

    .line 247
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v1, 0x7f0a016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 248
    .local v0, "iconView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIconContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    const v1, 0x7f0a016f

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    .line 253
    const v1, 0x7f0a016e

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    .line 254
    const v1, 0x7f0a016d

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mSecondSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    .line 255
    iget-boolean v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIsInstantApp:Z

    if-eqz v1, :cond_1

    .line 256
    const v1, 0x7f0a0200

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    .line 257
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120719

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-direct {p0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    .line 260
    :cond_1
    if-eqz p2, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/widget/EntityHeaderController;->bindHeaderButtons()Lcom/android/settings/widget/EntityHeaderController;

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    return-object v1
.end method

.method public done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uiContext"    # Landroid/content/Context;

    .line 234
    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 236
    .local v0, "pref":Lcom/android/settings/applications/LayoutPreference;
    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    .line 237
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setSelectable(Z)V

    .line 238
    const-string v1, "pref_app_header"

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setKey(Ljava/lang/String;)V

    .line 239
    return-object v0
.end method

.method public setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "action1"    # I
    .param p2, "action2"    # I

    .line 200
    iput p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction1:I

    .line 201
    iput p2, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction2:I

    .line 202
    return-object p0
.end method

.method public setEditZenRuleNameListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 226
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mEditRuleNameOnClickListener:Landroid/view/View$OnClickListener;

    .line 227
    return-object p0
.end method

.method public setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "hasAppInfoLink"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHasAppInfoLink:Z

    .line 195
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 141
    :cond_0
    return-object p0
.end method

.method public setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 2
    .param p1, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 150
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 151
    return-object p0
.end method

.method public setIconContentDescription(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIconContentDescription:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "isInstantApp"    # Z

    .line 221
    iput-boolean p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIsInstantApp:Z

    .line 222
    return-object p0
.end method

.method public setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 1
    .param p1, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 165
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    .line 166
    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 160
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    .line 161
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 128
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 129
    iput-object p2, p0, Lcom/android/settings/widget/EntityHeaderController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 130
    return-object p0
.end method

.method public setSecondSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 182
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mSecondSummary:Ljava/lang/CharSequence;

    .line 183
    return-object p0
.end method

.method public setSummary(Landroid/content/pm/PackageInfo;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    .line 178
    :cond_0
    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 170
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    .line 171
    return-object p0
.end method

.method public setUid(I)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "uid"    # I

    .line 211
    iput p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    .line 212
    return-object p0
.end method

.method public styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 310
    if-nez p1, :cond_0

    .line 311
    const-string v0, "AppDetailFeature"

    const-string v1, "No activity, cannot style actionbar."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-object p0

    .line 314
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 315
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-nez v0, :cond_1

    .line 316
    const-string v1, "AppDetailFeature"

    const-string v2, "No actionbar, cannot style actionbar."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-object p0

    .line 319
    :cond_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x1010433

    .line 320
    invoke-static {p1, v2}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 319
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 322
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    if-eqz v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iget-object v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v2, v3}, Lcom/android/settings/widget/ActionBarShadowController;->attachToRecyclerView(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)Lcom/android/settings/widget/ActionBarShadowController;

    .line 326
    :cond_2
    return-object p0
.end method
