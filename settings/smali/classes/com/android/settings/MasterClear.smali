.class public Lcom/android/settings/MasterClear;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field static final CREDENTIAL_CONFIRM_REQUEST:I = 0x38

.field static final KEYGUARD_REQUEST:I = 0x37


# instance fields
.field private mContentView:Landroid/view/View;

.field mEsimStorage:Landroid/widget/CheckBox;

.field private mEsimStorageContainer:Landroid/view/View;

.field mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field mInitiateButton:Landroid/widget/Button;

.field protected final mInitiateListener:Landroid/view/View$OnClickListener;

.field mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 218
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "description"    # Ljava/lang/StringBuffer;

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    return-void

    .line 394
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 395
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 396
    .local v0, "vGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 397
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 398
    .local v2, "nextChild":Landroid/view/View;
    invoke-direct {p0, v2, p2}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 396
    .end local v2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v0
    .end local v1
    :cond_1
    goto :goto_1

    :cond_2
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 401
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 402
    .local v0, "vText":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 403
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    .end local v0
    :cond_3
    :goto_1
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .line 408
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/android/settings/MasterClear;Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "__"    # Landroid/content/DialogInterface;

    .line 512
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .locals 30
    .param p1, "um"    # Landroid/os/UserManager;

    move-object/from16 v1, p0

    .line 413
    iget-object v0, v1, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v2, 0x7f0a0011

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 414
    .local v2, "accountsLabel":Landroid/view/View;
    iget-object v0, v1, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0a0010

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 415
    .local v3, "contents":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 418
    .local v4, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 419
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 421
    .local v7, "profilesSize":I
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    .line 423
    .local v8, "mgr":Landroid/accounts/AccountManager;
    const-string v0, "layout_inflater"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/LayoutInflater;

    .line 426
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .line 427
    .local v0, "accountsCount":I
    move v11, v0

    const/4 v0, 0x0

    .local v0, "profileIndex":I
    .local v11, "accountsCount":I
    :goto_0
    move v12, v0

    .end local v0
    .local v12, "profileIndex":I
    if-ge v12, v7, :cond_9

    .line 428
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 429
    .local v13, "userInfo":Landroid/content/pm/UserInfo;
    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    .line 430
    .local v14, "profileId":I
    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 431
    .local v15, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v8, v14}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v10

    .line 432
    .local v10, "accounts":[Landroid/accounts/Account;
    move-object/from16 v16, v6

    array-length v6, v10

    .line 433
    .local v6, "N":I
    .local v16, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v6, :cond_0

    .line 434
    nop

    .line 427
    move-object/from16 v18, v8

    goto/16 :goto_c

    .line 436
    :cond_0
    add-int/2addr v11, v6

    .line 438
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 439
    move-object/from16 v18, v8

    invoke-virtual {v0, v14}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v8

    .line 440
    .local v8, "descs":[Landroid/accounts/AuthenticatorDescription;
    .local v18, "mgr":Landroid/accounts/AccountManager;
    move/from16 v19, v11

    array-length v11, v8

    .line 442
    .local v11, "M":I
    .local v19, "accountsCount":I
    move/from16 v20, v14

    const v14, 0x1020016

    .end local v14
    .local v20, "profileId":I
    const/4 v0, 0x1

    if-le v7, v0, :cond_2

    .line 443
    invoke-static {v9, v3}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 444
    .local v0, "titleView":Landroid/view/View;
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Landroid/widget/TextView;

    .line 445
    .local v14, "titleText":Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v17

    if-eqz v17, :cond_1

    const v17, 0x7f12037b

    .end local v13
    .local v21, "userInfo":Landroid/content/pm/UserInfo;
    :goto_1
    move-object/from16 v21, v13

    move/from16 v13, v17

    goto :goto_2

    .line 446
    .end local v21
    .restart local v13
    :cond_1
    const v17, 0x7f12037a

    goto :goto_1

    .line 445
    .end local v13
    .restart local v21
    :goto_2
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(I)V

    .line 447
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .end local v0
    .end local v14
    goto :goto_3

    .line 450
    .end local v21
    .restart local v13
    :cond_2
    move-object/from16 v21, v13

    .end local v13
    .restart local v21
    :goto_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    move v13, v0

    .end local v0
    .local v13, "i":I
    if-ge v13, v6, :cond_8

    .line 451
    aget-object v14, v10, v13

    .line 452
    .local v14, "account":Landroid/accounts/Account;
    const/4 v0, 0x0

    .line 453
    .local v0, "desc":Landroid/accounts/AuthenticatorDescription;
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_5
    move/from16 v22, v17

    .end local v17
    .local v22, "j":I
    move-object/from16 v23, v0

    move/from16 v0, v22

    if-ge v0, v11, :cond_4

    .line 454
    .end local v22
    .local v0, "j":I
    .local v23, "desc":Landroid/accounts/AuthenticatorDescription;
    move/from16 v24, v6

    iget-object v6, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    .end local v6
    .local v24, "N":I
    move-object/from16 v25, v10

    aget-object v10, v8, v0

    .end local v10
    .local v25, "accounts":[Landroid/accounts/Account;
    iget-object v10, v10, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 455
    aget-object v6, v8, v0

    .line 456
    .end local v23
    .local v6, "desc":Landroid/accounts/AuthenticatorDescription;
    goto :goto_6

    .line 453
    .end local v6
    .restart local v23
    :cond_3
    add-int/lit8 v17, v0, 0x1

    .end local v0
    .restart local v17
    move-object/from16 v0, v23

    move/from16 v6, v24

    move-object/from16 v10, v25

    goto :goto_5

    .line 459
    .end local v17
    .end local v24
    .end local v25
    .local v6, "N":I
    .restart local v10
    :cond_4
    move/from16 v24, v6

    move-object/from16 v25, v10

    move-object/from16 v6, v23

    .end local v10
    .end local v23
    .local v6, "desc":Landroid/accounts/AuthenticatorDescription;
    .restart local v24
    .restart local v25
    :goto_6
    if-nez v6, :cond_5

    .line 460
    const-string v0, "MasterClear"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v8

    const-string v8, "No descriptor for account name="

    .end local v8
    .local v26, "descs":[Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " type="

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    nop

    .line 450
    move/from16 v28, v11

    goto/16 :goto_b

    .line 464
    .end local v26
    .restart local v8
    :cond_5
    move-object/from16 v26, v8

    .end local v8
    .restart local v26
    const/4 v0, 0x0

    move-object v8, v0

    .line 466
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v6, Landroid/accounts/AuthenticatorDescription;->iconId:I

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_6

    .line 467
    :try_start_1
    iget-object v0, v6, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v15}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 469
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v27, v8

    :try_start_2
    iget v8, v6, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 470
    .end local v8
    .local v27, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 469
    invoke-virtual {v10, v8, v15}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v8

    .end local v27
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_7

    .line 474
    .end local v0
    .restart local v27
    :catch_0
    move-exception v0

    goto :goto_8

    .line 472
    :catch_1
    move-exception v0

    move/from16 v28, v11

    goto :goto_9

    .end local v27
    .restart local v8
    :catch_2
    move-exception v0

    move-object/from16 v27, v8

    move/from16 v28, v11

    .end local v8
    .restart local v27
    goto :goto_9

    .line 476
    .end local v27
    .restart local v8
    :cond_6
    move-object/from16 v27, v8

    .line 477
    :goto_7
    move-object/from16 v27, v8

    move/from16 v28, v11

    goto :goto_a

    .line 474
    :catch_3
    move-exception v0

    move-object/from16 v27, v8

    .line 475
    .end local v8
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v27
    :goto_8
    const-string v8, "MasterClear"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v11

    const-string v11, "Invalid icon id for account type "

    .end local v11
    .local v28, "M":I
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0
    goto :goto_a

    .line 472
    .end local v27
    .end local v28
    .restart local v8
    .restart local v11
    :catch_4
    move-exception v0

    move-object/from16 v27, v8

    move/from16 v28, v11

    .line 473
    .end local v8
    .end local v11
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v27
    .restart local v28
    :goto_9
    const-string v8, "MasterClear"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad package name for account type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v0
    nop

    .line 477
    :goto_a
    if-nez v27, :cond_7

    .line 478
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    .line 481
    .end local v27
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v0, v27

    const v8, 0x7f0d00e8

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 482
    .local v8, "child":Landroid/view/View;
    const v10, 0x1020006

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    const v10, 0x1020016

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v10, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 450
    .end local v0
    .end local v6
    .end local v8
    .end local v14
    :goto_b
    add-int/lit8 v0, v13, 0x1

    .end local v13
    .local v0, "i":I
    move/from16 v6, v24

    move-object/from16 v10, v25

    move-object/from16 v8, v26

    move/from16 v11, v28

    goto/16 :goto_4

    .line 427
    .end local v0
    .end local v15
    .end local v20
    .end local v21
    .end local v24
    .end local v25
    .end local v26
    .end local v28
    :cond_8
    move/from16 v11, v19

    .end local v19
    .local v11, "accountsCount":I
    :goto_c
    add-int/lit8 v0, v12, 0x1

    .end local v12
    .local v0, "profileIndex":I
    move-object/from16 v6, v16

    move-object/from16 v8, v18

    goto/16 :goto_0

    .line 488
    .end local v0
    .end local v16
    .end local v18
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v8, "mgr":Landroid/accounts/AccountManager;
    :cond_9
    move-object/from16 v16, v6

    move-object/from16 v18, v8

    const/4 v0, 0x1

    .end local v6
    .end local v8
    .restart local v16
    .restart local v18
    if-lez v11, :cond_a

    .line 489
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 490
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d

    .line 493
    :cond_a
    const/4 v6, 0x0

    :goto_d
    iget-object v8, v1, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v10, 0x7f0a02cc

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 494
    .local v8, "otherUsers":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v10

    sub-int/2addr v10, v7

    if-lez v10, :cond_b

    goto :goto_e

    :cond_b
    move v0, v6

    .line 495
    .local v0, "hasOtherUsers":Z
    :goto_e
    if-eqz v0, :cond_c

    goto :goto_f

    :cond_c
    const/16 v10, 0x8

    move v6, v10

    :goto_f
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 496
    return-void
.end method


# virtual methods
.method establishInitialState()V
    .locals 6

    .line 261
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a01fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 262
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 265
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mEsimStorageContainer:Landroid/view/View;

    .line 266
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mEsimStorage:Landroid/widget/CheckBox;

    .line 267
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    .line 279
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    .line 280
    .local v0, "isExtStorageEmulated":Z
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 281
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v3, Lcom/android/settings/MasterClear$2;

    invoke-direct {v3, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 282
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f0a0175

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 285
    .local v2, "externalOption":Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f0a004e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 288
    .local v3, "externalAlsoErased":Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    xor-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 293
    .end local v2
    .end local v3
    nop

    .line 303
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->showWipeEuicc()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->showWipeEuiccCheckbox()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 305
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0a0172

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 306
    .local v2, "title":Landroid/widget/TextView;
    const v3, 0x7f1205f2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 307
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mEsimStorageContainer:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mEsimStorageContainer:Landroid/view/View;

    new-instance v3, Lcom/android/settings/MasterClear$3;

    invoke-direct {v3, p0}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    .end local v2
    goto :goto_2

    .line 315
    :cond_3
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 316
    .local v2, "esimAlsoErased":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f0a02ab

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 320
    .local v3, "noCancelMobilePlan":Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mEsimStorage:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 325
    .end local v2
    .end local v3
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 326
    .local v1, "um":Landroid/os/UserManager;
    invoke-direct {p0, v1}, Lcom/android/settings/MasterClear;->loadAccountList(Landroid/os/UserManager;)V

    .line 327
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 328
    .local v2, "contentDescription":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v4, 0x7f0a0263

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 329
    .local v3, "masterClearContainer":Landroid/view/View;
    invoke-direct {p0, v3, v2}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 330
    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    new-instance v5, Lcom/android/settings/MasterClear$4;

    invoke-direct {v5, p0}, Lcom/android/settings/MasterClear$4;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 345
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 346
    return-void
.end method

.method getAccountConfirmationIntent()Landroid/content/Intent;
    .locals 13

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 178
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f1200a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "accountType":Ljava/lang/String;
    const v2, 0x7f12009b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "packageName":Ljava/lang/String;
    const v3, 0x7f12009a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "className":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 182
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 183
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    .line 188
    .local v4, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v4, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 189
    .local v6, "accounts":[Landroid/accounts/Account;
    if-eqz v6, :cond_2

    array-length v7, v6

    if-lez v7, :cond_2

    .line 190
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 191
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    .line 194
    .local v7, "requestAccountConfirmation":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 195
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 196
    .local v9, "resolution":Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_1

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_1

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 198
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 201
    return-object v7

    .line 203
    :cond_1
    const-string v10, "MasterClear"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to resolve Activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v7
    .end local v8
    .end local v9
    goto :goto_0

    .line 206
    :cond_2
    const-string v7, "MasterClear"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " accounts installed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-object v5

    .line 184
    .end local v4
    .end local v6
    :cond_3
    :goto_1
    const-string v4, "MasterClear"

    const-string v6, "Resources not set for account confirmation."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-object v5
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 525
    const/16 v0, 0x42

    return v0
.end method

.method hasReachedBottom(Landroid/widget/ScrollView;)Z
    .locals 6
    .param p1, "scrollView"    # Landroid/widget/ScrollView;

    .line 380
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 381
    return v1

    .line 384
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 385
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 387
    .local v3, "diff":I
    if-gtz v3, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0
.end method

.method protected isEuiccEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 374
    const-string v0, "euicc"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    .line 375
    .local v0, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    return v1
.end method

.method isValidRequestCode(I)Z
    .locals 1
    .param p1, "requestCode"    # I

    .line 123
    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    const/16 v0, 0x38

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/MasterClear;->onActivityResultInternal(IILandroid/content/Intent;)V

    .line 130
    return-void
.end method

.method onActivityResultInternal(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClear;->isValidRequestCode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 143
    return-void

    .line 146
    :cond_1
    const/4 v0, 0x0

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x38

    if-eq v1, p1, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getAccountConfirmationIntent()Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->showAccountCredentialConfirmation(Landroid/content/Intent;)V

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    .line 155
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120885

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 502
    .local v0, "context":Landroid/content/Context;
    const-string v1, "no_factory_reset"

    .line 503
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 502
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 504
    .local v1, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 505
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "no_factory_reset"

    .line 506
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 505
    invoke-static {v0, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 507
    .local v3, "disallow":Z
    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/settings/Utils;->isDemoUser(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 508
    const v5, 0x7f0d00ea

    invoke-virtual {p1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    return-object v4

    .line 509
    :cond_2
    if-eqz v1, :cond_3

    .line 510
    new-instance v4, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    const-string v5, "no_factory_reset"

    .line 511
    invoke-virtual {v4, v5, v1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/-$$Lambda$MasterClear$Z9cDw51Fmk6mKl61MZqDIXg0-34;

    invoke-direct {v5, p0}, Lcom/android/settings/-$$Lambda$MasterClear$Z9cDw51Fmk6mKl61MZqDIXg0-34;-><init>(Lcom/android/settings/MasterClear;)V

    .line 512
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 513
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 514
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v4

    .line 517
    :cond_3
    const v5, 0x7f0d00e7

    invoke-virtual {p1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    .line 519
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 520
    iget-object v4, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    return-object v4
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterClear;->hasReachedBottom(Landroid/widget/ScrollView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    return-void
.end method

.method showAccountCredentialConfirmation(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 172
    const/16 v0, 0x38

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    .line 173
    return-void
.end method

.method showFinalConfirmation()V
    .locals 3

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "erase_sd"

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    const-string v1, "erase_esim"

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mEsimStorage:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/MasterClearConfirm;

    .line 163
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 164
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 165
    const v2, 0x7f120878

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 168
    return-void
.end method

.method showWipeEuicc()Z
    .locals 4

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 357
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->isEuiccEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 358
    return v2

    .line 360
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 361
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v3, "euicc_provisioned"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "development_settings_enabled"

    .line 362
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 361
    :goto_1
    return v2
.end method

.method showWipeEuiccCheckbox()Z
    .locals 2

    .line 368
    const-string v0, "masterclear.allow_retain_esim_profiles_after_fdr"

    .line 369
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 368
    return v0
.end method
