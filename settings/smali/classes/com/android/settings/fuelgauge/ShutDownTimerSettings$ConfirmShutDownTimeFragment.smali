.class public Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;
.super Landroid/app/DialogFragment;
.source "ShutDownTimerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/ShutDownTimerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmShutDownTimeFragment"
.end annotation


# instance fields
.field private isDismmissed:Z

.field private mAtTime_BeanVariable:Lcom/android/settings/BeanVariable;

.field private mDlghandler:Landroid/os/Handler;

.field private mIsSwitchOpened:Z

.field private mShutdownSwitch:Landroid/widget/Switch;

.field private mTimepicker:Landroid/widget/TimePicker;

.field private mTimerHourMinute:[I

.field private mTvTimerNow:Landroid/widget/TextView;

.field mUpdateTimeNow:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 512
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 517
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimerHourMinute:[I

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mIsSwitchOpened:Z

    .line 519
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mAtTime_BeanVariable:Lcom/android/settings/BeanVariable;

    .line 521
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->isDismmissed:Z

    .line 545
    new-instance v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$1;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mUpdateTimeNow:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x17
        0x0
    .end array-data
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    .line 512
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->isDismmissed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    .line 512
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTvTimerNow:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    .line 512
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mDlghandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    .line 512
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimerHourMinute:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    .line 512
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mIsSwitchOpened:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;
    .param p1, "x1"    # Z

    .line 512
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mIsSwitchOpened:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Lcom/android/settings/BeanVariable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    .line 512
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mAtTime_BeanVariable:Lcom/android/settings/BeanVariable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    .line 512
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mShutdownSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method public static show(Landroid/app/Fragment;Lcom/android/settings/BeanVariable;Landroid/os/Handler;)V
    .locals 3
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "beanVariable"    # Lcom/android/settings/BeanVariable;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 524
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 525
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;-><init>()V

    .line 526
    .local v0, "dialog":Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 527
    iput-object p2, v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mDlghandler:Landroid/os/Handler;

    .line 528
    iput-object p1, v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mAtTime_BeanVariable:Lcom/android/settings/BeanVariable;

    .line 529
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "shutdown_reset_time"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 530
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 568
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 569
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 571
    .local v1, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 572
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f120b0f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 573
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0d0041

    invoke-virtual {v1, v5, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mView:Landroid/view/View;

    .line 574
    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 576
    new-instance v5, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$2;

    invoke-direct {v5, p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$2;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)V

    const v6, 0x104000a

    invoke-virtual {v2, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 594
    const/high16 v5, 0x1040000

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 596
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mView:Landroid/view/View;

    const v5, 0x7f0a049e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTvTimerNow:Landroid/widget/TextView;

    .line 597
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mView:Landroid/view/View;

    const v5, 0x7f0a03d3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mShutdownSwitch:Landroid/widget/Switch;

    .line 598
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mShutdownSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$3;

    invoke-direct {v5, p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$3;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mShutdownSwitch:Landroid/widget/Switch;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 606
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mView:Landroid/view/View;

    const v5, 0x7f0a0462

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TimePicker;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimepicker:Landroid/widget/TimePicker;

    .line 607
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimepicker:Landroid/widget/TimePicker;

    const/high16 v5, 0x60000

    invoke-virtual {v3, v5}, Landroid/widget/TimePicker;->setDescendantFocusability(I)V

    .line 608
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimepicker:Landroid/widget/TimePicker;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 611
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 612
    .local v3, "systemResources":Landroid/content/res/Resources;
    const-string v6, "hour"

    const-string v7, "id"

    const-string v8, "android"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 613
    .local v6, "hourNumberPickerId":I
    const-string v7, "minute"

    const-string v8, "id"

    const-string v9, "android"

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 614
    .local v7, "minuteNumberPickerId":I
    iget-object v8, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimepicker:Landroid/widget/TimePicker;

    invoke-virtual {v8, v6}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    .line 615
    .local v8, "hourNumberPicker":Landroid/widget/NumberPicker;
    iget-object v9, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimepicker:Landroid/widget/TimePicker;

    invoke-virtual {v9, v7}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/NumberPicker;

    .line 616
    .local v9, "minuteNumberPicker":Landroid/widget/NumberPicker;
    if-eqz v8, :cond_0

    .line 617
    invoke-virtual {v8, v4}, Landroid/widget/NumberPicker;->setScrollBarSize(I)V

    .line 619
    :cond_0
    if-eqz v9, :cond_1

    .line 620
    invoke-virtual {v9, v4}, Landroid/widget/NumberPicker;->setScrollBarSize(I)V

    .line 623
    .end local v3
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 622
    :catch_0
    move-exception v3

    .line 627
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "db_at_time_turn_off_pad"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, "sAtTimeTurnOffPadTimeout":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 630
    .local v6, "jsonObject":Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v7, "shutdown_time"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 631
    const-string v7, "shutdown_time"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 632
    .local v7, "shutdownTime":[Ljava/lang/String;
    if-eqz v7, :cond_2

    array-length v8, v7

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2

    .line 633
    iget-object v8, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimerHourMinute:[I

    aget-object v9, v7, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v4

    .line 634
    iget-object v8, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimerHourMinute:[I

    aget-object v9, v7, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v5

    .line 635
    iget-object v8, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimepicker:Landroid/widget/TimePicker;

    iget-object v9, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimerHourMinute:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setHour(I)V

    .line 636
    iget-object v8, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimepicker:Landroid/widget/TimePicker;

    iget-object v9, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimerHourMinute:[I

    aget v9, v9, v5

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setMinute(I)V

    .line 641
    .end local v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    goto :goto_1

    .line 640
    :catch_1
    move-exception v7

    .line 643
    :goto_1
    :try_start_3
    const-string v7, "shutdown_switch"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 644
    const-string v7, "shutdown_switch"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mIsSwitchOpened:Z

    .line 645
    iget-object v7, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mShutdownSwitch:Landroid/widget/Switch;

    iget-boolean v8, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mIsSwitchOpened:Z

    invoke-virtual {v7, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 648
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    goto :goto_2

    .line 647
    :catch_2
    move-exception v7

    .line 650
    .end local v3
    .end local v6
    :goto_2
    goto :goto_3

    .line 649
    :catch_3
    move-exception v3

    .line 651
    :goto_3
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimepicker:Landroid/widget/TimePicker;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimerHourMinute:[I

    aget v4, v6, v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setHour(I)V

    .line 652
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimepicker:Landroid/widget/TimePicker;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimerHourMinute:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setMinute(I)V

    .line 653
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mTimepicker:Landroid/widget/TimePicker;

    new-instance v4, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$4;

    invoke-direct {v4, p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$4;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 662
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mDlghandler:Landroid/os/Handler;

    if-eqz v3, :cond_4

    .line 663
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mDlghandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mUpdateTimeNow:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 664
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mDlghandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mUpdateTimeNow:Ljava/lang/Runnable;

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 666
    :cond_4
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->isDismmissed:Z

    .line 534
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 536
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 538
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mDlghandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mDlghandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mUpdateTimeNow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 542
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    goto :goto_1

    .line 541
    :catch_1
    move-exception v0

    .line 543
    :goto_1
    return-void
.end method
