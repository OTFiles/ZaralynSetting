.class public Lcom/android/settings/SettingsRamFusion;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SettingsRamFusion.java"


# instance fields
.field private mDialog1:Landroid/app/AlertDialog;

.field private mItemOnClickListener:Landroid/view/View$OnClickListener;

.field private ram_fusion_summary:Landroid/widget/TextView;

.field private ram_fusion_switch:Landroid/widget/Switch;

.field private ram_fusion_title:Landroid/widget/TextView;

.field private rl_ram_fusion_container:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 88
    new-instance v0, Lcom/android/settings/SettingsRamFusion$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsRamFusion$1;-><init>(Lcom/android/settings/SettingsRamFusion;)V

    iput-object v0, p0, Lcom/android/settings/SettingsRamFusion;->mItemOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private getAvailSpace(Ljava/lang/String;)J
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .line 149
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "statfs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    .line 153
    .local v1, "count":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    .line 155
    .local v3, "size":J
    mul-long v5, v1, v3

    return-wide v5
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 376
    const/16 v0, 0x51

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 73
    const v0, 0x7f0d0143

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0a037a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/settings/SettingsRamFusion;->rl_ram_fusion_container:Landroid/widget/RelativeLayout;

    .line 76
    const v1, 0x7f0a0348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SettingsRamFusion;->ram_fusion_title:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0a0346

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SettingsRamFusion;->ram_fusion_summary:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0a0347

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/settings/SettingsRamFusion;->ram_fusion_switch:Landroid/widget/Switch;

    .line 80
    iget-object v1, p0, Lcom/android/settings/SettingsRamFusion;->rl_ram_fusion_container:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/settings/SettingsRamFusion;->mItemOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/SettingsRamFusion;->ram_fusion_switch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/SettingsRamFusion;->mItemOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsRamFusion;->updateRamFusionPref(Z)V

    .line 85
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .line 269
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 304
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 372
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 373
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 367
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 368
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 361
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 363
    return-void
.end method

.method public onclickEvent(Z)Z
    .locals 6
    .param p1, "bValue"    # Z

    .line 160
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "ro.readboy.ext_swap_support"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "supportStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "support"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 168
    .end local v2
    :cond_0
    goto :goto_1

    .line 163
    .restart local v2
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    const-string v4, "\u62b1\u6b49\uff0c\u672c\u673a\u4e0d\u652f\u6301\u8be5\u529f\u80fd!"

    invoke-virtual {v3, v4, v0}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 164
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 166
    .end local v2
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    .end local v2
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/SettingsRamFusion;->getAvailSpace(Ljava/lang/String;)J

    move-result-wide v2

    .line 171
    .local v2, "nowSdSize":J
    if-eqz p1, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 172
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    const-string v5, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\uff0c\u6682\u4e0d\u80fd\u5f00\u542f\u8be5\u529f\u80fd!"

    invoke-virtual {v4, v5, v0}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 173
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 177
    .end local v2
    :cond_2
    goto :goto_2

    .line 175
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    .end local v0
    :goto_2
    :try_start_2
    const-string v0, ""

    .line 191
    .local v0, "content":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 192
    const-string v2, "\u8981\u5f00\u542f\u5185\u5b58\u6269\u5c55\u529f\u80fd\u5417\uff1f\n\u786e\u8ba4\u540e\u5c06\u81ea\u52a8\u91cd\u542f\u8bbe\u5907\u5e76\u751f\u6548\u3002"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_3

    .line 194
    :cond_3
    const-string v2, "\u8981\u5173\u95ed\u5185\u5b58\u6269\u5c55\u529f\u80fd\u5417\uff1f\n\u786e\u8ba4\u540e\u5c06\u81ea\u52a8\u91cd\u542f\u8bbe\u5907\u5e76\u751f\u6548\u3002"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 196
    :goto_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SettingsRamFusion;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u5185\u5b58\u6269\u5c55"

    .line 197
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 198
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/android/settings/SettingsRamFusion$3;

    invoke-direct {v4, p0}, Lcom/android/settings/SettingsRamFusion$3;-><init>(Lcom/android/settings/SettingsRamFusion;)V

    .line 200
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/android/settings/SettingsRamFusion$2;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/SettingsRamFusion$2;-><init>(Lcom/android/settings/SettingsRamFusion;Z)V

    .line 206
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsRamFusion;->mDialog1:Landroid/app/AlertDialog;

    .line 259
    iget-object v2, p0, Lcom/android/settings/SettingsRamFusion;->mDialog1:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 262
    .end local v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 260
    :catch_2
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    .end local v0
    :goto_4
    return v1
.end method

.method public updateRamFusionPref(Z)V
    .locals 10
    .param p1, "firstIn"    # Z

    .line 106
    const-string v0, "ro.readboy.ext_swap_support"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "supportStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f120ba0

    const/4 v3, 0x0

    if-nez v1, :cond_6

    const-string v1, "support"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 114
    :cond_0
    const/4 v1, 0x4

    if-eqz p1, :cond_4

    .line 116
    :try_start_0
    const-string v4, "persist.sys.ext_swap_file_size"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 117
    .local v4, "swapSupport":I
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getRomTotalSize()Ljava/lang/String;

    move-result-object v5

    const-string v6, " GB"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 118
    .local v5, "ramSize":I
    const/4 v6, 0x4

    .line 119
    .local v6, "swapMax":I
    if-gt v5, v1, :cond_1

    .line 120
    const/4 v6, 0x2

    goto :goto_0

    .line 121
    :cond_1
    const/16 v7, 0x8

    if-gt v5, v7, :cond_2

    .line 122
    const/4 v6, 0x4

    goto :goto_0

    .line 124
    :cond_2
    const/16 v6, 0x8

    .line 126
    :goto_0
    if-eq v4, v6, :cond_3

    .line 127
    const-string v7, "persist.sys.ext_swap_file_size"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v4
    .end local v5
    .end local v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    .line 129
    :catch_0
    move-exception v4

    .line 130
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    .end local v4
    :cond_4
    :goto_1
    const-string v4, "persist.sys.ext_swap_switch"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 135
    .local v4, "ramFusionState":I
    iget-object v5, p0, Lcom/android/settings/SettingsRamFusion;->ram_fusion_switch:Landroid/widget/Switch;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 136
    iget-object v5, p0, Lcom/android/settings/SettingsRamFusion;->ram_fusion_switch:Landroid/widget/Switch;

    if-ne v4, v6, :cond_5

    move v7, v6

    goto :goto_2

    :cond_5
    move v7, v3

    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 137
    iget-object v5, p0, Lcom/android/settings/SettingsRamFusion;->ram_fusion_title:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v2, p0, Lcom/android/settings/SettingsRamFusion;->ram_fusion_summary:Landroid/widget/TextView;

    const-string v5, "\u5c06\u5360\u7528\u90e8\u5206\u5b58\u50a8\u7a7a\u95f4\u4e3a\u7cfb\u7edf\u63d0\u4f9b\u989d\u5916\u7684%dGB\u8fd0\u884c\u5185\u5b58\u3002"

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "persist.sys.ext_swap_file_size"

    invoke-static {v7, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v4
    goto :goto_4

    .line 109
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/settings/SettingsRamFusion;->ram_fusion_switch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/SettingsRamFusion;->ram_fusion_switch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/SettingsRamFusion;->ram_fusion_title:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/SettingsRamFusion;->ram_fusion_summary:Landroid/widget/TextView;

    const-string v2, "\u62b1\u6b49\uff0c\u672c\u673a\u4e0d\u652f\u6301\u8be5\u529f\u80fd!"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_4
    return-void
.end method
