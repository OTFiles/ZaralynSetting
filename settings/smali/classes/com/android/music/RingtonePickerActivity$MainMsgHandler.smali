.class Lcom/android/music/RingtonePickerActivity$MainMsgHandler;
.super Landroid/os/Handler;
.source "RingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainMsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/RingtonePickerActivity;


# direct methods
.method public constructor <init>(Lcom/android/music/RingtonePickerActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 677
    iput-object p1, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    .line 678
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 679
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 684
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 689
    :pswitch_0    # 0x2002
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/music/RingtonePickerActivity;->access$200(Lcom/android/music/RingtonePickerActivity;)V

    .line 690
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/music/RingtonePickerActivity;->access$300(Lcom/android/music/RingtonePickerActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/music/RingtonePickerActivity;->access$400(Lcom/android/music/RingtonePickerActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 691
    return-void

    .line 693
    :cond_0
    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    const/16 v3, 0x2001

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/music/RingtonePickerActivity;->sendMsgQueueDelayed(IIILjava/lang/Object;I)I

    .line 696
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/music/RingtonePickerActivity;->access$300(Lcom/android/music/RingtonePickerActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/music/RingtonePickerActivity;->access$500(Lcom/android/music/RingtonePickerActivity;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 697
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/music/RingtonePickerActivity;->access$600(Lcom/android/music/RingtonePickerActivity;)Landroid/media/Ringtone;

    move-result-object v0

    if-nez v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-virtual {v1}, Lcom/android/music/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v3}, Lcom/android/music/RingtonePickerActivity;->access$700(Lcom/android/music/RingtonePickerActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/music/RingtonePickerActivity;->getTrulyUriRintoneDefault(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/RingtonePickerActivity;->access$602(Lcom/android/music/RingtonePickerActivity;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/music/RingtonePickerActivity;->access$600(Lcom/android/music/RingtonePickerActivity;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/music/RingtonePickerActivity;->access$600(Lcom/android/music/RingtonePickerActivity;)Landroid/media/Ringtone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/music/RingtonePickerActivity;->access$800(Lcom/android/music/RingtonePickerActivity;)Lcom/android/music/MusicRingtoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/MusicRingtoneManager;->inferStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/music/RingtonePickerActivity;->access$600(Lcom/android/music/RingtonePickerActivity;)Landroid/media/Ringtone;

    move-result-object v0

    .line 709
    .local v0, "ringtone":Landroid/media/Ringtone;
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v1, v0}, Lcom/android/music/RingtonePickerActivity;->access$902(Lcom/android/music/RingtonePickerActivity;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 710
    if-eqz v0, :cond_5

    .line 711
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_2

    .line 714
    .end local v0
    :cond_3
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/music/RingtonePickerActivity;->access$1000(Lcom/android/music/RingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/music/RingtonePickerActivity;->access$1000(Lcom/android/music/RingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_4

    .line 716
    :try_start_1
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/music/RingtonePickerActivity;->access$800(Lcom/android/music/RingtonePickerActivity;)Lcom/android/music/MusicRingtoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v2}, Lcom/android/music/RingtonePickerActivity;->access$300(Lcom/android/music/RingtonePickerActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/music/RingtonePickerActivity;->access$1100(Lcom/android/music/RingtonePickerActivity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/music/MusicRingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    .restart local v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 717
    .end local v0
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 719
    .local v0, "ringtone":Landroid/media/Ringtone;
    :goto_0
    goto :goto_1

    .line 721
    .end local v0
    :cond_4
    const/4 v0, 0x0

    .line 723
    .restart local v0
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v1, v0}, Lcom/android/music/RingtonePickerActivity;->access$902(Lcom/android/music/RingtonePickerActivity;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 725
    if-eqz v0, :cond_5

    .line 726
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v2}, Lcom/android/music/RingtonePickerActivity;->access$1300(Lcom/android/music/RingtonePickerActivity;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/music/RingtonePickerActivity;->access$1202(Lcom/android/music/RingtonePickerActivity;J)J

    .line 727
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v1}, Lcom/android/music/RingtonePickerActivity;->access$1400(Lcom/android/music/RingtonePickerActivity;)Lcom/android/music/RingtonePickerActivity$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 728
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_2

    .line 686
    .end local v0
    :pswitch_1    # 0x2001
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/music/RingtonePickerActivity;->access$200(Lcom/android/music/RingtonePickerActivity;)V

    .line 687
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    nop

    .line 738
    :cond_5
    :goto_2
    goto :goto_3

    .line 736
    :catch_1
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 739
    .end local v0
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2001
        :pswitch_1    # 0x2001
        :pswitch_0    # 0x2002
    .end packed-switch
.end method
