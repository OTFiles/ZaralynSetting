.class public Lcom/android/settings/AccessiblePreferenceCategory;
.super Landroid/support/v7/preference/PreferenceCategory;
.source "AccessiblePreferenceCategory.java"


# instance fields
.field private mContentDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 41
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/AccessiblePreferenceCategory;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/android/settings/AccessiblePreferenceCategory;->mContentDescription:Ljava/lang/String;

    .line 35
    return-void
.end method
