.class public Lcom/android/settings/SettingsLauncherShortcutEnabler;
.super Landroid/app/Fragment;
.source "SettingsLauncherShortcutEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;,
        Lcom/android/settings/SettingsLauncherShortcutEnabler$ReloadPortAppsTask;
    }
.end annotation


# instance fields
.field private btn_clean_search:Landroid/widget/Button;

.field private btn_start_search:Landroid/widget/Button;

.field private edit_search_text:Landroid/widget/EditText;

.field private ll_white_list_empty_container:Landroid/widget/LinearLayout;

.field private mActM:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mFunClickListener:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;

.field private mHandler:Landroid/os/Handler;

.field private mMsgHandler:Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;

.field private mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

.field private mRunningLoadPortApps:Lcom/android/settings/SettingsLauncherShortcutEnabler$ReloadPortAppsTask;

.field private mWhiteListAdapter:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

.field private onItemTouchCallbackListener:Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mWhiteListAdapter:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    .line 69
    iput-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    .line 71
    iput-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mContext:Landroid/content/Context;

    .line 73
    iput-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mMsgHandler:Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mHandler:Landroid/os/Handler;

    .line 244
    new-instance v0, Lcom/android/settings/SettingsLauncherShortcutEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler$3;-><init>(Lcom/android/settings/SettingsLauncherShortcutEnabler;)V

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->onItemTouchCallbackListener:Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    .line 283
    new-instance v0, Lcom/android/settings/SettingsLauncherShortcutEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler$4;-><init>(Lcom/android/settings/SettingsLauncherShortcutEnabler;)V

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mFunClickListener:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsLauncherShortcutEnabler;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherShortcutEnabler;

    .line 60
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->btn_start_search:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsLauncherShortcutEnabler;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherShortcutEnabler;

    .line 60
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->btn_clean_search:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsLauncherShortcutEnabler;)Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherShortcutEnabler;

    .line 60
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mWhiteListAdapter:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsLauncherShortcutEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherShortcutEnabler;

    .line 60
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SettingsLauncherShortcutEnabler;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherShortcutEnabler;

    .line 60
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->ll_white_list_empty_container:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SettingsLauncherShortcutEnabler;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLauncherShortcutEnabler;

    .line 60
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->edit_search_text:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public getMsgHandler()Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mMsgHandler:Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;-><init>(Lcom/android/settings/SettingsLauncherShortcutEnabler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mMsgHandler:Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mMsgHandler:Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;

    return-object v0
.end method

.method public hideSoftKeyboard()V
    .locals 4

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 313
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 315
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 317
    .end local v1
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 321
    if-eqz p1, :cond_2

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0096

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00a4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->getMsgHandler()Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SettingsLauncherShortcutEnabler$6;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler$6;-><init>(Lcom/android/settings/SettingsLauncherShortcutEnabler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->getMsgHandler()Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SettingsLauncherShortcutEnabler$5;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler$5;-><init>(Lcom/android/settings/SettingsLauncherShortcutEnabler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    nop

    .line 346
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 90
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 97
    const/4 v0, 0x0

    const v2, 0x7f0d00ca

    move-object/from16 v3, p1

    invoke-virtual {v3, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "parent":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mContext:Landroid/content/Context;

    .line 100
    iget-object v4, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mActM:Landroid/app/ActivityManager;

    if-nez v4, :cond_0

    .line 101
    iget-object v4, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mActM:Landroid/app/ActivityManager;

    .line 104
    :cond_0
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 105
    .local v4, "point":Landroid/graphics/Point;
    iget-object v5, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 106
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 107
    .local v5, "lcdwidth":I
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 113
    .local v6, "lcdheight":I
    const v7, 0x7f0a0247

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->ll_white_list_empty_container:Landroid/widget/LinearLayout;

    .line 114
    const v7, 0x7f0a0096

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->btn_clean_search:Landroid/widget/Button;

    .line 115
    iget-object v7, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->btn_clean_search:Landroid/widget/Button;

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v7, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->btn_clean_search:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    const v7, 0x7f0a00a4

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->btn_start_search:Landroid/widget/Button;

    .line 118
    iget-object v7, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->btn_start_search:Landroid/widget/Button;

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v7, 0x7f0a0159

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->edit_search_text:Landroid/widget/EditText;

    .line 120
    iget-object v7, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->edit_search_text:Landroid/widget/EditText;

    new-instance v9, Lcom/android/settings/SettingsLauncherShortcutEnabler$1;

    invoke-direct {v9, v1}, Lcom/android/settings/SettingsLauncherShortcutEnabler$1;-><init>(Lcom/android/settings/SettingsLauncherShortcutEnabler;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 131
    iget-object v7, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->edit_search_text:Landroid/widget/EditText;

    new-instance v9, Lcom/android/settings/custom/EditFilterName;

    new-instance v10, Lcom/android/settings/SettingsLauncherShortcutEnabler$2;

    invoke-direct {v10, v1}, Lcom/android/settings/SettingsLauncherShortcutEnabler$2;-><init>(Lcom/android/settings/SettingsLauncherShortcutEnabler;)V

    iget-object v11, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->edit_search_text:Landroid/widget/EditText;

    invoke-direct {v9, v10, v11}, Lcom/android/settings/custom/EditFilterName;-><init>(Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;Landroid/widget/EditText;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    const v7, 0x7f0a034b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    iput-object v7, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    .line 143
    new-instance v7, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v9, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 144
    .local v7, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v9, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v7}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 146
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 148
    new-instance v10, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    iget-object v11, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->getMsgHandler()Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;

    move-result-object v12

    iget-object v13, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mFunClickListener:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;

    invoke-direct {v10, v11, v0, v12, v13}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;)V

    iput-object v10, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mWhiteListAdapter:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->restartPortAppsLoading()V

    .line 165
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mWhiteListAdapter:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 167
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    new-instance v10, Lcom/android/settings/shortcutenable/ShortcutEnableAppListDividerItem;

    iget-object v11, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v9}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListDividerItem;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 172
    new-instance v0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelper;

    iget-object v9, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->onItemTouchCallbackListener:Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    invoke-direct {v0, v9}, Lcom/android/settings/shortcutenable/DefaultItemTouchHelper;-><init>(Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;)V

    move-object v9, v0

    .line 173
    .local v9, "itemTouchHelper":Lcom/android/settings/shortcutenable/DefaultItemTouchHelper;
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mRecyclerWhiteList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v0}, Lcom/android/settings/shortcutenable/DefaultItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 174
    invoke-virtual {v9, v8}, Lcom/android/settings/shortcutenable/DefaultItemTouchHelper;->setDragEnable(Z)V

    .line 175
    invoke-virtual {v9, v8}, Lcom/android/settings/shortcutenable/DefaultItemTouchHelper;->setSwipeEnable(Z)V

    .line 178
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->getAllAppShortcut(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v10

    .line 179
    .local v10, "launcherShortcutPkgNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/shortcutenable/LauncherShortcutCell;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 181
    :try_start_0
    iget-object v0, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "launcher_shortcut_request_list"

    invoke-static {v0, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "strReqList":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v11, "savedLauncherShortcutCellListPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/shortcutenable/LauncherShortcutCell;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 184
    const-string v12, "["

    const-string v13, ""

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "]"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 185
    const-string v12, "\\}, \\{"

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 186
    .local v12, "arrayPkgs":[Ljava/lang/String;
    move v13, v8

    .local v13, "inum":I
    :goto_0
    array-length v14, v12

    if-ge v13, v14, :cond_2

    .line 187
    new-instance v14, Lcom/android/settings/shortcutenable/LauncherShortcutCell;

    aget-object v15, v12, v13

    invoke-direct {v14, v15}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;-><init>(Ljava/lang/String;)V

    .line 188
    .local v14, "shortcutCell":Lcom/android/settings/shortcutenable/LauncherShortcutCell;
    invoke-virtual {v14}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->isInitSucess()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v11}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 189
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v14
    :cond_1
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    goto :goto_0

    .line 193
    .end local v12
    .end local v13
    :cond_2
    const/4 v8, 0x0

    .line 194
    .local v8, "ireqListNeedUpdate":Z
    const/16 v16, 0x0

    .local v16, "inum":I
    :goto_1
    move/from16 v12, v16

    .end local v16
    .local v12, "inum":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_4

    .line 195
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/shortcutenable/LauncherShortcutCell;

    .line 196
    .local v13, "shortcutCell":Lcom/android/settings/shortcutenable/LauncherShortcutCell;
    invoke-virtual {v13}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->isInitSucess()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 197
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    const/4 v8, 0x1

    .line 194
    .end local v13
    :cond_3
    add-int/lit8 v16, v12, 0x1

    .end local v12
    .restart local v16
    goto :goto_1

    .line 201
    .end local v16
    :cond_4
    if-eqz v8, :cond_5

    .line 202
    const-string v12, ""

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=====divhee==============retStrReqList==="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v12, v1, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "launcher_shortcut_request_list"

    invoke-virtual {v11}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 206
    .end local v0
    .end local v8
    .end local v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_2

    .line 205
    :catch_0
    move-exception v0

    .line 209
    :cond_6
    :goto_2
    return-object v2
.end method

.method public onDestroyView()V
    .locals 0

    .line 411
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 412
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 448
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 449
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->stopPortAppsLoading()V

    .line 451
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 422
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->restartPortAppsLoading()V

    .line 424
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 416
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 418
    return-void
.end method

.method public restartPortAppsLoading()V
    .locals 2

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->stopPortAppsLoading()V

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mRunningLoadPortApps:Lcom/android/settings/SettingsLauncherShortcutEnabler$ReloadPortAppsTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mWhiteListAdapter:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Lcom/android/settings/SettingsLauncherShortcutEnabler$ReloadPortAppsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsLauncherShortcutEnabler$ReloadPortAppsTask;-><init>(Lcom/android/settings/SettingsLauncherShortcutEnabler;Lcom/android/settings/SettingsLauncherShortcutEnabler$1;)V

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mRunningLoadPortApps:Lcom/android/settings/SettingsLauncherShortcutEnabler$ReloadPortAppsTask;

    .line 431
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mRunningLoadPortApps:Lcom/android/settings/SettingsLauncherShortcutEnabler$ReloadPortAppsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsLauncherShortcutEnabler$ReloadPortAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 434
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 435
    :goto_0
    return-void
.end method

.method public stopPortAppsLoading()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mRunningLoadPortApps:Lcom/android/settings/SettingsLauncherShortcutEnabler$ReloadPortAppsTask;

    if-eqz v0, :cond_0

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mRunningLoadPortApps:Lcom/android/settings/SettingsLauncherShortcutEnabler$ReloadPortAppsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsLauncherShortcutEnabler$ReloadPortAppsTask;->cancel(Z)Z

    .line 441
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 442
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler;->mRunningLoadPortApps:Lcom/android/settings/SettingsLauncherShortcutEnabler$ReloadPortAppsTask;

    .line 444
    :cond_0
    return-void
.end method
