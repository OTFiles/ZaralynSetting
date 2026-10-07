.class public Lcom/android/settings/notification/ZenRuleSelectionDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenRuleSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenRuleSelectionDialog$LoadIconTask;,
        Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final RULE_TYPE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/notification/ZenRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mNm:Landroid/app/NotificationManager;

.field private static mPm:Landroid/content/pm/PackageManager;

.field protected static mPositiveClickListener:Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;

.field private static mServiceListing:Lcom/android/settings/utils/ZenServiceListing;


# instance fields
.field private mRuleContainer:Landroid/widget/LinearLayout;

.field private final mServiceListingCallback:Lcom/android/settings/utils/ZenServiceListing$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/settings/notification/ZenModeSettings;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->DEBUG:Z

    .line 210
    new-instance v0, Lcom/android/settings/notification/ZenRuleSelectionDialog$3;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenRuleSelectionDialog$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->RULE_TYPE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 190
    new-instance v0, Lcom/android/settings/notification/ZenRuleSelectionDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenRuleSelectionDialog$2;-><init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mServiceListingCallback:Lcom/android/settings/utils/ZenServiceListing$Callback;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/util/Comparator;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->RULE_TYPE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/pm/PackageManager;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300()Landroid/app/NotificationManager;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mNm:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/ZenRuleSelectionDialog;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenRuleSelectionDialog;
    .param p1, "x1"    # Ljava/util/Set;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->bindExternalRules(Ljava/util/Set;)V

    return-void
.end method

.method private bindExternalRules(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/settings/notification/ZenRuleInfo;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p1, "externalRuleTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/settings/notification/ZenRuleInfo;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/ZenRuleInfo;

    .line 186
    .local v1, "ri":Lcom/android/settings/notification/ZenRuleInfo;
    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->bindType(Lcom/android/settings/notification/ZenRuleInfo;)V

    .line 187
    .end local v1
    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method private bindType(Lcom/android/settings/notification/ZenRuleInfo;)V
    .locals 7
    .param p1, "ri"    # Lcom/android/settings/notification/ZenRuleInfo;

    .line 118
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 119
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v1, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d024b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 122
    .local v1, "v":Landroid/widget/LinearLayout;
    const v3, 0x7f0a01d9

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 123
    .local v3, "iconView":Landroid/widget/ImageView;
    const v4, 0x7f0a0468

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-boolean v4, p1, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    if-nez v4, :cond_0

    .line 125
    new-instance v4, Lcom/android/settings/notification/ZenRuleSelectionDialog$LoadIconTask;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/notification/ZenRuleSelectionDialog$LoadIconTask;-><init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;Landroid/widget/ImageView;)V

    .line 126
    .local v4, "task":Lcom/android/settings/notification/ZenRuleSelectionDialog$LoadIconTask;
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/pm/ApplicationInfo;

    aput-object v0, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/settings/notification/ZenRuleSelectionDialog$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    const v5, 0x7f0a0411

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 129
    .local v5, "subtitle":Landroid/widget/TextView;
    sget-object v6, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    .end local v4
    .end local v5
    goto :goto_0

    .line 132
    :cond_0
    iget-object v2, p1, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    sget-object v2, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f080226

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v2, p1, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    sget-object v2, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f08015d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_2
    :goto_0
    new-instance v2, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;-><init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;Lcom/android/settings/notification/ZenRuleInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mRuleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    .end local v0
    .end local v1
    .end local v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 153
    :goto_1
    return-void
.end method

.method private defaultNewEvent()Lcom/android/settings/notification/ZenRuleInfo;
    .locals 4

    .line 171
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 172
    .local v0, "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 173
    const/4 v1, 0x0

    iput v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 174
    new-instance v1, Lcom/android/settings/notification/ZenRuleInfo;

    invoke-direct {v1}, Lcom/android/settings/notification/ZenRuleInfo;-><init>()V

    .line 175
    .local v1, "rt":Lcom/android/settings/notification/ZenRuleInfo;
    const-string v2, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    .line 176
    sget-object v2, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f1211ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    .line 177
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    .line 178
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 179
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getEventConditionProvider()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    .line 180
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    .line 181
    return-object v1
.end method

.method private defaultNewSchedule()Lcom/android/settings/notification/ZenRuleInfo;
    .locals 4

    .line 156
    new-instance v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 157
    .local v0, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v1, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 158
    const/16 v1, 0x16

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 159
    const/4 v1, 0x7

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 160
    new-instance v1, Lcom/android/settings/notification/ZenRuleInfo;

    invoke-direct {v1}, Lcom/android/settings/notification/ZenRuleInfo;-><init>()V

    .line 161
    .local v1, "rt":Lcom/android/settings/notification/ZenRuleInfo;
    const-string v2, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    .line 162
    sget-object v2, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f121275

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    .line 163
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getEventConditionProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    .line 164
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 165
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    .line 166
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    .line 167
    return-object v1
.end method

.method public static show(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;Lcom/android/settings/utils/ZenServiceListing;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/app/Fragment;
    .param p2, "listener"    # Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;
    .param p3, "serviceListing"    # Lcom/android/settings/utils/ZenServiceListing;

    .line 78
    sput-object p2, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mPositiveClickListener:Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;

    .line 79
    sput-object p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    .line 80
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mPm:Landroid/content/pm/PackageManager;

    .line 81
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mNm:Landroid/app/NotificationManager;

    .line 82
    sput-object p3, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    .line 84
    new-instance v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;-><init>()V

    .line 85
    .local v0, "dialog":Lcom/android/settings/notification/ZenRuleSelectionDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 86
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ZenRuleSelectionDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 87
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 73
    const/16 v0, 0x4f6

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d024c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "v":Landroid/view/View;
    const v2, 0x7f0a0385

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mRuleContainer:Landroid/widget/LinearLayout;

    .line 95
    sget-object v2, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    if-eqz v2, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->defaultNewEvent()Lcom/android/settings/notification/ZenRuleInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->bindType(Lcom/android/settings/notification/ZenRuleInfo;)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->defaultNewSchedule()Lcom/android/settings/notification/ZenRuleInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->bindType(Lcom/android/settings/notification/ZenRuleInfo;)V

    .line 98
    sget-object v2, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mServiceListingCallback:Lcom/android/settings/utils/ZenServiceListing$Callback;

    invoke-virtual {v2, v3}, Lcom/android/settings/utils/ZenServiceListing;->addZenCallback(Lcom/android/settings/utils/ZenServiceListing$Callback;)V

    .line 99
    sget-object v2, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {v2}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    .line 101
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1211fd

    .line 102
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 103
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120358

    .line 104
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 101
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 111
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog;->mServiceListingCallback:Lcom/android/settings/utils/ZenServiceListing$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ZenServiceListing;->removeZenCallback(Lcom/android/settings/utils/ZenServiceListing$Callback;)V

    .line 114
    :cond_0
    return-void
.end method
