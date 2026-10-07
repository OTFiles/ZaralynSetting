.class public Lcom/android/settings/notification/ZenModeSliceBuilder;
.super Ljava/lang/Object;
.source "ZenModeSliceBuilder.java"


# static fields
.field public static final INTENT_FILTER:Landroid/content/IntentFilter;

.field public static final ZEN_MODE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 59
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.settings.slices"

    .line 60
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "action"

    .line 61
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "zen_mode"

    .line 62
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/ZenModeSliceBuilder;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 74
    sget-object v0, Lcom/android/settings/notification/ZenModeSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/android/settings/notification/ZenModeSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/android/settings/notification/ZenModeSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private static getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.notification.ZEN_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    .line 158
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "zen_mode"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 128
    .local v0, "contentUri":Landroid/net/Uri;
    const v1, 0x7f12124e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "screenTitle":Ljava/lang/String;
    const-class v2, Lcom/android/settings/notification/ZenModeSettings;

    .line 130
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zen_mode"

    .line 129
    const/16 v4, 0x4c

    invoke-static {p0, v2, v3, v1, v4}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/settings/SubSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 133
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 129
    return-object v2
.end method

.method private static getPrimaryAction(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 152
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getSlice(Landroid/content/Context;)Landroidx/slice/Slice;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .line 89
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSliceBuilder;->isZenModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 90
    .local v0, "isZenModeEnabled":Z
    const v1, 0x7f12124e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 91
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    .line 92
    .local v2, "color":I
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSliceBuilder;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 93
    .local v3, "toggleAction":Landroid/app/PendingIntent;
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSliceBuilder;->getPrimaryAction(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 94
    .local v4, "primaryAction":Landroid/app/PendingIntent;
    new-instance v5, Landroidx/slice/builders/SliceAction;

    const/4 v6, 0x0

    move-object v7, v6

    check-cast v7, Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-direct {v5, v4, v7, v1}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 96
    .local v5, "primarySliceAction":Landroidx/slice/builders/SliceAction;
    new-instance v7, Landroidx/slice/builders/SliceAction;

    invoke-direct {v7, v3, v6, v0}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    move-object v6, v7

    .line 99
    .local v6, "toggleSliceAction":Landroidx/slice/builders/SliceAction;
    new-instance v7, Landroidx/slice/builders/ListBuilder;

    sget-object v8, Lcom/android/settings/notification/ZenModeSliceBuilder;->ZEN_MODE_URI:Landroid/net/Uri;

    const-wide/16 v9, -0x1

    invoke-direct {v7, p0, v8, v9, v10}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 100
    invoke-virtual {v7, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/notification/-$$Lambda$ZenModeSliceBuilder$sz-ZmwW0wKJApaEBVBuTr2mkXrg;

    invoke-direct {v8, v1, v6, v5}, Lcom/android/settings/notification/-$$Lambda$ZenModeSliceBuilder$sz-ZmwW0wKJApaEBVBuTr2mkXrg;-><init>(Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/SliceAction;)V

    .line 101
    invoke-virtual {v7, v8}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object v7

    .line 105
    invoke-virtual {v7}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v7

    .line 99
    return-object v7
.end method

.method public static handleUriChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 113
    const-string v0, "android.app.slice.extra.TOGGLE_STATE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 115
    .local v0, "zenModeOn":Z
    if-eqz v0, :cond_0

    .line 116
    const/4 v1, 0x1

    .local v1, "zenMode":I
    goto :goto_0

    .line 118
    .end local v1
    :cond_0
    nop

    .line 120
    .restart local v1
    :goto_0
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "ZenModeSliceBuilder"

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method private static isZenModeEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 137
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 138
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    .line 140
    .local v1, "zenMode":I
    packed-switch v1, :pswitch_data_0

    .line 147
    const/4 v2, 0x0

    return v2

    .line 144
    :pswitch_0    # 0x2 0x3 0x1
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0    # 0x1
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method static synthetic lambda$getSlice$0(Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 1
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "toggleSliceAction"    # Landroidx/slice/builders/SliceAction;
    .param p2, "primarySliceAction"    # Landroidx/slice/builders/SliceAction;
    .param p3, "b"    # Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 101
    nop

    .line 102
    invoke-virtual {p3, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 101
    return-void
.end method
