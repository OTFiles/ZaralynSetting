.class public Lcom/android/settings/accessibility/AccessibilityServiceWarning;
.super Ljava/lang/Object;
.source "AccessibilityServiceWarning.java"


# direct methods
.method public static createCapabilitiesDialog(Landroid/app/Activity;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 7
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 53
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->getServiceName(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 52
    const v3, 0x7f1205b4

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->createEnableDialogContentView(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    const v2, 0x104000a

    invoke-virtual {v0, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 56
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 59
    .local v0, "ad":Landroid/app/AlertDialog;
    sget-object v2, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityServiceWarning$D3xqJyTKInilYjQAxG1fpVU1D1M;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$AccessibilityServiceWarning$D3xqJyTKInilYjQAxG1fpVU1D1M;

    .line 72
    .local v2, "filterTouchListener":Landroid/view/View$OnTouchListener;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 73
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 74
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 75
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog;->create()V

    .line 77
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 80
    return-object v0
.end method

.method private static createEnableDialogContentView(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-object/from16 v0, p0

    .line 102
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 105
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    const v3, 0x7f0d00a1

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 108
    .local v3, "content":Landroid/view/View;
    const v4, 0x7f0a0166

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 110
    .local v4, "encryptionWarningView":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->isFullDiskEncrypted()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 111
    const v5, 0x7f1205b0

    new-array v8, v6, [Ljava/lang/Object;

    .line 112
    invoke-static/range {p0 .. p1}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->getServiceName(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v7

    .line 111
    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    .end local v5
    goto :goto_0

    .line 116
    :cond_0
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :goto_0
    const v5, 0x7f0a00c7

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 121
    .local v5, "capabilitiesHeaderView":Landroid/widget/TextView;
    const v8, 0x7f12035b

    new-array v6, v6, [Ljava/lang/Object;

    .line 122
    invoke-static/range {p0 .. p1}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->getServiceName(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v6, v7

    .line 121
    invoke-virtual {v0, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v6, 0x7f0a00c6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 127
    .local v6, "capabilitiesView":Landroid/widget/LinearLayout;
    const v8, 0x109003e

    invoke-virtual {v1, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 130
    .local v9, "capabilityView":Landroid/view/View;
    const v10, 0x1020371

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 132
    .local v11, "imageView":Landroid/widget/ImageView;
    const v12, 0x10804ed

    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    const v13, 0x1020375

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 137
    .local v14, "labelView":Landroid/widget/TextView;
    const v15, 0x7f12035d

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v15, 0x1020377

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/widget/TextView;

    .line 142
    .local v7, "descriptionView":Landroid/widget/TextView;
    const v15, 0x7f12035c

    .line 143
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 142
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    nop

    .line 146
    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    .line 148
    .local v13, "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    .line 152
    .local v12, "capabilityCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v18, v17

    .end local v17
    .local v18, "i":I
    move/from16 v10, v18

    if-ge v10, v12, :cond_1

    .line 153
    .end local v18
    .local v10, "i":I
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v4

    move-object/from16 v4, v16

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 155
    .local v4, "capability":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    .local v19, "encryptionWarningView":Landroid/widget/TextView;
    invoke-virtual {v1, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 158
    const v2, 0x1020371

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Landroid/widget/ImageView;

    .line 160
    const v2, 0x10804ed

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    const v8, 0x1020375

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Landroid/widget/TextView;

    .line 165
    iget v2, v4, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const v2, 0x1020377

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/widget/TextView;

    .line 169
    iget v2, v4, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    .end local v4
    add-int/lit8 v17, v10, 0x1

    .end local v10
    .restart local v17
    move-object/from16 v4, v19

    const/4 v2, 0x0

    const v8, 0x109003e

    const v10, 0x1020371

    goto :goto_1

    .line 174
    .end local v17
    .end local v19
    .local v4, "encryptionWarningView":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v19, v4

    .end local v4
    .restart local v19
    return-object v3
.end method

.method private static getServiceName(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 180
    .local v0, "locale":Ljava/util/Locale;
    nop

    .line 181
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 182
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method private static isFullDiskEncrypted()Z
    .locals 1

    .line 90
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$createCapabilitiesDialog$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    return v2

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f120e92

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    :cond_2
    return v1
.end method
