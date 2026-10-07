.class public Lcom/android/settings/applications/ClearDefaultsPreference;
.super Landroid/support/v7/preference/Preference;
.source "ClearDefaultsPreference.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field protected mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ClearDefaultsPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 72
    const v0, 0x7f040129

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const v0, 0x7f0d003c

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->setLayoutResource(I)V

    .line 61
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 63
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ClearDefaultsPreference;

    .line 43
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ClearDefaultsPreference;

    .line 43
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ClearDefaultsPreference;

    .line 43
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ClearDefaultsPreference;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ClearDefaultsPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->isDefaultBrowser(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ClearDefaultsPreference;

    .line 43
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ClearDefaultsPreference;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ClearDefaultsPreference;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->resetLaunchDefaultsUi(Landroid/widget/TextView;)V

    return-void
.end method

.method private isDefaultBrowser(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "defaultBrowser":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "autoLaunchView"    # Landroid/widget/TextView;

    .line 174
    const v0, 0x7f12018c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 91
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 93
    const v0, 0x7f0a00e2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/applications/ClearDefaultsPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference$1;-><init>(Lcom/android/settings/applications/ClearDefaultsPreference;Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->updateUI(Landroid/support/v7/preference/PreferenceViewHolder;)Z

    .line 116
    return-void
.end method

.method public setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 86
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 87
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public updateUI(Landroid/support/v7/preference/PreferenceViewHolder;)Z
    .locals 18
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    move-object/from16 v0, p0

    .line 119
    iget-object v1, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 120
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v1

    .line 122
    .local v1, "hasBindAppWidgetPermission":Z
    const v2, 0x7f0a006f

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 123
    .local v2, "autoLaunchView":Landroid/widget/TextView;
    iget-object v4, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settingslib/applications/AppUtils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    .line 124
    invoke-direct {v0, v4}, Lcom/android/settings/applications/ClearDefaultsPreference;->isDefaultBrowser(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v7, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    .line 125
    invoke-static {v4, v7}, Lcom/android/settingslib/applications/AppUtils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    .line 126
    .local v4, "autoLaunchEnabled":Z
    :goto_1
    if-nez v4, :cond_2

    if-nez v1, :cond_2

    .line 127
    invoke-direct {v0, v2}, Lcom/android/settings/applications/ClearDefaultsPreference;->resetLaunchDefaultsUi(Landroid/widget/TextView;)V

    goto/16 :goto_6

    .line 129
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    move v7, v5

    goto :goto_2

    :cond_3
    move v7, v6

    .line 131
    .local v7, "useBullets":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 132
    const v8, 0x7f12018f

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 134
    :cond_4
    const v8, 0x7f12018e

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 138
    .local v8, "context":Landroid/content/Context;
    const/4 v9, 0x0

    .line 139
    .local v9, "text":Ljava/lang/CharSequence;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070111

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 141
    .local v10, "bulletIndent":I
    const/4 v13, 0x2

    if-eqz v4, :cond_7

    .line 142
    const v14, 0x7f12018d

    invoke-virtual {v8, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 144
    .local v14, "autoLaunchEnableText":Ljava/lang/CharSequence;
    new-instance v15, Landroid/text/SpannableString;

    invoke-direct {v15, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    .local v15, "s":Landroid/text/SpannableString;
    if-eqz v7, :cond_5

    .line 146
    new-instance v11, Landroid/text/style/BulletSpan;

    invoke-direct {v11, v10}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v15, v11, v6, v12, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 148
    :cond_5
    if-nez v9, :cond_6

    .line 149
    new-array v11, v13, [Ljava/lang/CharSequence;

    aput-object v15, v11, v6

    const-string v12, "\n"

    aput-object v12, v11, v5

    invoke-static {v11}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_4

    :cond_6
    const/4 v11, 0x4

    new-array v12, v11, [Ljava/lang/CharSequence;

    aput-object v9, v12, v6

    const-string v11, "\n"

    aput-object v11, v12, v5

    aput-object v15, v12, v13

    const-string v11, "\n"

    const/16 v16, 0x3

    aput-object v11, v12, v16

    invoke-static {v12}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    :goto_4
    move-object v9, v11

    .line 151
    .end local v14
    .end local v15
    :cond_7
    if-eqz v1, :cond_a

    .line 152
    const v11, 0x7f1200e4

    .line 153
    invoke-virtual {v8, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 154
    .local v11, "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 155
    .local v12, "s":Landroid/text/SpannableString;
    if-eqz v7, :cond_8

    .line 156
    new-instance v14, Landroid/text/style/BulletSpan;

    invoke-direct {v14, v10}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 157
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v15

    .line 156
    invoke-virtual {v12, v14, v6, v15, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 159
    :cond_8
    if-nez v9, :cond_9

    .line 160
    new-array v13, v13, [Ljava/lang/CharSequence;

    aput-object v12, v13, v6

    const-string v6, "\n"

    aput-object v6, v13, v5

    invoke-static {v13}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_5

    :cond_9
    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/CharSequence;

    aput-object v9, v14, v6

    const-string v6, "\n"

    aput-object v6, v14, v5

    aput-object v12, v14, v13

    const-string v6, "\n"

    const/4 v13, 0x3

    aput-object v6, v14, v13

    invoke-static {v14}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_5
    move-object v9, v6

    .line 162
    .end local v11
    .end local v12
    :cond_a
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v6, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    :goto_6
    return v5
.end method
