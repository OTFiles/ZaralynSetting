.class public Lcom/android/settings/AllowBindAppWidgetActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "AllowBindAppWidgetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBindOptions:Landroid/os/Bundle;

.field private mCallingPackage:Ljava/lang/String;

.field private mClicked:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private mProfile:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mClicked:Z

    .line 56
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 57
    iget v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mBindOptions:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v1

    .line 61
    .local v1, "bound":Z
    if-eqz v1, :cond_0

    .line 62
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v2, "result":Landroid/content/Intent;
    const-string v3, "appWidgetId"

    iget v4, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/AllowBindAppWidgetActivity;->setResult(ILandroid/content/Intent;)V

    .line 69
    .end local v1
    .end local v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BIND_APPWIDGET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error binding widget with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 72
    .local v0, "alwaysAllowBind":Z
    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 79
    .end local v0
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->finish()V

    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 92
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/AllowBindAppWidgetActivity;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 95
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, ""

    .line 96
    .local v2, "label":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 98
    const/4 v4, -0x1

    :try_start_0
    const-string v5, "appWidgetId"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    .line 99
    const-string v5, "appWidgetProviderProfile"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    iput-object v5, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    .line 101
    iget-object v5, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    if-nez v5, :cond_0

    .line 102
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    .line 104
    :cond_0
    const-string v5, "appWidgetProvider"

    .line 105
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    iput-object v5, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    .line 106
    const-string v5, "appWidgetOptions"

    .line 107
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    iput-object v5, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mBindOptions:Landroid/os/Bundle;

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 110
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 111
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v7

    .line 119
    .end local v5
    .end local v6
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    iput v4, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    .line 114
    iput-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    .line 115
    iput-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    .line 116
    const-string v3, "BIND_APPWIDGET"

    const-string v4, "Error getting parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->finish()V

    .line 118
    return-void

    .line 121
    .end local v0
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 122
    .local v4, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v5, 0x7f1200dc

    invoke-virtual {p0, v5}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 123
    const v5, 0x7f1200db

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v0

    invoke-virtual {p0, v5, v7}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 124
    const v5, 0x7f12040b

    invoke-virtual {p0, v5}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 125
    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 126
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 128
    const-string v5, "layout_inflater"

    .line 129
    invoke-virtual {p0, v5}, Lcom/android/settings/AllowBindAppWidgetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 130
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x1090037

    invoke-virtual {v5, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 131
    iget-object v3, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v7, 0x10201a7

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 132
    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    const v7, 0x7f1200dd

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v0

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 135
    invoke-virtual {v6}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 136
    invoke-virtual {v7}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 137
    invoke-virtual {v8}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v8

    int-to-float v8, v8

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07008b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 134
    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 140
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 141
    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v6, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    .line 142
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 141
    invoke-virtual {v3, v6, v7}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->setupAlert()V

    .line 145
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mClicked:Z

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->finish()V

    .line 87
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 88
    return-void
.end method
