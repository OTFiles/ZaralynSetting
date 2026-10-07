.class public Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BatteryTipDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

.field mMetricsKey:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;I)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;
    .locals 3
    .param p0, "batteryTip"    # Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .param p1, "metricsKey"    # I

    .line 62
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;-><init>()V

    .line 64
    .local v0, "dialogFragment":Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 65
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "battery_tip"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    const-string v2, "metrics_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 150
    const/16 v0, 0x52b

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;

    .line 156
    .local v0, "lsn":Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;
    if-nez v0, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 159
    invoke-static {v1, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->getActionForBatteryTip(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;

    move-result-object v1

    .line 162
    .local v1, "action":Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
    if-eqz v1, :cond_1

    .line 163
    iget v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mMetricsKey:I

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->handlePositiveAction(I)V

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    invoke-interface {v0, v2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;->onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V

    .line 166
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v0, p0

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 75
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 77
    .local v2, "context":Landroid/content/Context;
    const-string v3, "battery_tip"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    iput-object v3, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    .line 78
    const-string v3, "metrics_key"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mMetricsKey:I

    .line 80
    iget-object v3, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getType()I

    move-result v3

    const v4, 0x7f0d0178

    const v5, 0x104000a

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v3, :pswitch_data_0

    .line 144
    :pswitch_0    # 0x4 0x5 0x3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :pswitch_1    # 0x7
    iget-object v3, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    .line 134
    .local v3, "unrestrictAppTip":Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;
    nop

    .line 135
    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-static {v2, v4}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 137
    .local v4, "name":Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f120244

    .line 138
    invoke-virtual {v0, v6}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f120242

    .line 139
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f120243

    .line 140
    invoke-virtual {v5, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f120241

    .line 141
    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 142
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 137
    return-object v5

    .line 82
    .end local v3
    .end local v4
    :pswitch_2    # 0x6
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120230

    .line 83
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 84
    invoke-virtual {v3, v5, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 82
    return-object v3

    .line 87
    :pswitch_3    # 0x2
    iget-object v3, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;

    .line 88
    .local v3, "highUsageTip":Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    invoke-virtual {v9, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    .line 91
    .local v4, "view":Landroid/support/v7/widget/RecyclerView;
    new-instance v9, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v9, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 92
    new-instance v9, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;

    .line 93
    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->getHighUsageAppList()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 92
    invoke-virtual {v4, v9}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 95
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f12022f

    new-array v7, v7, [Ljava/lang/Object;

    .line 97
    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->getHighUsageAppList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v6

    .line 96
    invoke-virtual {v0, v10, v7}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 98
    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 99
    invoke-virtual {v6, v5, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 100
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 95
    return-object v5

    .line 102
    .end local v3
    .end local v4
    :pswitch_4    # 0x1
    iget-object v3, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    .line 103
    .local v3, "restrictAppTip":Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;
    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->getRestrictAppList()Ljava/util/List;

    move-result-object v5

    .line 104
    .local v5, "restrictedAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/AppInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    .line 105
    .local v9, "num":I
    nop

    .line 106
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    iget-object v10, v10, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    .line 105
    invoke-static {v2, v10}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 108
    .local v10, "appLabel":Ljava/lang/CharSequence;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f10000a

    new-array v14, v7, [Ljava/lang/Object;

    .line 110
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v6

    .line 109
    invoke-virtual {v12, v13, v9, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f12023a

    .line 111
    invoke-virtual {v11, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/high16 v12, 0x1040000

    .line 112
    invoke-virtual {v11, v12, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 113
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    if-ne v9, v7, :cond_0

    .line 114
    const v4, 0x7f120239

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v10, v7, v6

    .line 115
    invoke-virtual {v0, v4, v7}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 116
    :cond_0
    const/4 v12, 0x5

    if-gt v9, v12, :cond_1

    .line 117
    const v6, 0x7f12023b

    .line 118
    invoke-virtual {v0, v6}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-virtual {v11, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 121
    invoke-virtual {v6, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    .line 122
    .local v4, "restrictionView":Landroid/support/v7/widget/RecyclerView;
    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v6, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 123
    new-instance v6, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;

    invoke-direct {v6, v2, v5}, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 124
    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 125
    .end local v4
    goto :goto_0

    .line 126
    :cond_1
    const v4, 0x7f12023c

    new-array v7, v7, [Ljava/lang/Object;

    .line 128
    invoke-virtual {v3, v2}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->getRestrictAppsString(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v6

    .line 126
    invoke-virtual {v2, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 131
    :goto_0
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4    # 0x1
        :pswitch_3    # 0x2
        :pswitch_0    # 0x3
        :pswitch_0    # 0x4
        :pswitch_0    # 0x5
        :pswitch_2    # 0x6
        :pswitch_1    # 0x7
    .end packed-switch
.end method
