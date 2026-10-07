.class abstract Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.super Ljava/lang/Object;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 126
    iput-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/widget/SettingsAppWidgetProvider$1;

    .line 122
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>()V

    return-void
.end method

.method private final getContentDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateResId"    # I

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonDescription()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "gadget":Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "state":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const v3, 0x7f120670

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public abstract getButtonDescription()I
.end method

.method public abstract getButtonId()I
.end method

.method public abstract getButtonImageId(Z)I
.end method

.method public abstract getContainerId()I
.end method

.method public abstract getIndicatorId()I
.end method

.method public getPosition()I
    .locals 1

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 319
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    .line 327
    return v1

    .line 329
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 335
    return v1

    .line 333
    :pswitch_0    # 0x1
    const/4 v0, 0x1

    return v0

    .line 331
    :pswitch_1    # 0x0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newState"    # I

    .line 268
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 269
    .local v0, "wasInTransition":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 283
    :pswitch_0    # 0x3
    iput-boolean v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 284
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 279
    :pswitch_1    # 0x2
    iput-boolean v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 280
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 281
    goto :goto_0

    .line 275
    :pswitch_2    # 0x1
    iput-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 276
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 277
    goto :goto_0

    .line 271
    :pswitch_3    # 0x0
    iput-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 272
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 273
    nop

    .line 288
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-nez v3, :cond_2

    .line 289
    iget-boolean v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v3, :cond_2

    .line 290
    const-string v3, "SettingsAppWidgetProvider"

    const-string v4, "processing deferred state change"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 292
    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    const-string v2, "SettingsAppWidgetProvider"

    const-string v3, "... but intended state matches, so no changes."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    :cond_0
    iget-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 295
    iput-boolean v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 296
    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    .line 298
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 301
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public final setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getContainerId()I

    move-result v0

    .line 205
    .local v0, "containerId":I
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonId()I

    move-result v1

    .line 206
    .local v1, "buttonId":I
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getIndicatorId()I

    move-result v2

    .line 207
    .local v2, "indicatorId":I
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getPosition()I

    move-result v3

    .line 208
    .local v3, "pos":I
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 217
    :pswitch_0    # 0x1
    const v4, 0x7f12066f

    .line 218
    invoke-direct {p0, p1, v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p0, v7}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 220
    nop

    .line 221
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500()[I

    move-result-object v4

    aget v4, v4, v3

    .line 220
    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 222
    goto :goto_0

    .line 210
    :pswitch_1    # 0x0
    const v4, 0x7f12066e

    .line 211
    invoke-direct {p0, p1, v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p0, v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 213
    nop

    .line 214
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()[I

    move-result-object v4

    aget v4, v4, v3

    .line 213
    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 215
    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    const v4, 0x7f120672

    .line 231
    invoke-direct {p0, p1, v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 232
    invoke-virtual {p0, v7}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 233
    nop

    .line 234
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$600()[I

    move-result-object v4

    aget v4, v4, v3

    .line 233
    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 236
    :cond_1
    const v4, 0x7f120671

    .line 237
    invoke-direct {p0, p1, v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 238
    invoke-virtual {p0, v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 239
    nop

    .line 240
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()[I

    move-result-object v4

    aget v4, v4, v3

    .line 239
    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 244
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 141
    .local v0, "currentState":I
    const/4 v1, 0x0

    .line 142
    .local v1, "newState":Z
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0    # 0x1
    const/4 v1, 0x0

    .line 145
    goto :goto_0

    .line 147
    :pswitch_1    # 0x0
    const/4 v1, 0x1

    .line 148
    goto :goto_0

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v2, v3

    move v1, v2

    .line 155
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 156
    iget-boolean v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v2, :cond_2

    .line 161
    iput-boolean v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    goto :goto_1

    .line 163
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 164
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    .line 166
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method
