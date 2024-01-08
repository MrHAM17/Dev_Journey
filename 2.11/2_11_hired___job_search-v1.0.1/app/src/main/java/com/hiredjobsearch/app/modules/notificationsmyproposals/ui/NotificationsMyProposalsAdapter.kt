package com.hiredjobsearch.app.modules.notificationsmyproposals.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.databinding.RowNotificationsmyproposalsBinding
import com.hiredjobsearch.app.modules.notificationsmyproposals.`data`.model.NotificationsmyproposalsRowModel
import kotlin.Int
import kotlin.collections.List

class NotificationsMyProposalsAdapter(
  var list: List<NotificationsmyproposalsRowModel>
) : RecyclerView.Adapter<NotificationsMyProposalsAdapter.RowNotificationsmyproposalsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowNotificationsmyproposalsVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_notificationsmyproposals,parent,false)
    return RowNotificationsmyproposalsVH(view)
  }

  override fun onBindViewHolder(holder: RowNotificationsmyproposalsVH, position: Int) {
    val notificationsmyproposalsRowModel = NotificationsmyproposalsRowModel()
    // TODO uncomment following line after integration with data source
    // val notificationsmyproposalsRowModel = list[position]
    holder.binding.notificationsmyproposalsRowModel = notificationsmyproposalsRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<NotificationsmyproposalsRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: NotificationsmyproposalsRowModel
    ) {
    }
  }

  inner class RowNotificationsmyproposalsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowNotificationsmyproposalsBinding =
        RowNotificationsmyproposalsBinding.bind(itemView)
    init {
      binding.btnOpened.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, NotificationsmyproposalsRowModel())
      }
    }
  }
}
