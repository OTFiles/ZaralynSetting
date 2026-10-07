.class public Lcom/android/settings/network/ApnPreference;
.super Landroid/support/v7/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 56
    sput-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    const v0, 0x7f04002f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    .line 45
    return-void
.end method

.method public static setSelectedKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "preferredApnKey"    # Ljava/lang/String;

    .line 103
    sput-object p0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 62
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 64
    const v0, 0x7f0a0055

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "widget":Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_2

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/widget/RadioButton;

    .line 67
    .local v1, "rb":Landroid/widget/RadioButton;
    iget-boolean v2, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 71
    .local v2, "isChecked":Z
    if-eqz v2, :cond_0

    .line 72
    sput-object v1, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 76
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 78
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    .line 79
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 80
    .end local v2
    goto :goto_0

    .line 81
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 85
    .end local v1
    :cond_2
    :goto_0
    const v1, 0x7f0a045c

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, "textLayout":Landroid/view/View;
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 87
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_3
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 107
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    if-eqz p2, :cond_2

    .line 113
    sget-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 116
    :cond_1
    sput-object p1, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 121
    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 123
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 126
    if-eqz p1, :cond_0

    const v0, 0x7f0a045c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, "pos":I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 131
    .local v2, "url":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v3, "editIntent":Landroid/content/Intent;
    const-string v4, "sub_id"

    iget v5, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :cond_0
    return-void
.end method

.method public setChecked()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    .line 140
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .line 147
    iput p1, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    .line 148
    return-void
.end method
