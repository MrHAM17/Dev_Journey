package com.fashionistaecommerceapp.app.modules.socialaccountlink.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.databinding.RowSocialaccountlinkBinding
import com.fashionistaecommerceapp.app.modules.socialaccountlink.`data`.model.SocialaccountlinkRowModel
import kotlin.Int
import kotlin.collections.List

class SocialAccountLinkAdapter(
  var list: List<SocialaccountlinkRowModel>
) : RecyclerView.Adapter<SocialAccountLinkAdapter.RowSocialaccountlinkVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSocialaccountlinkVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_socialaccountlink,parent,false)
    return RowSocialaccountlinkVH(view)
  }

  override fun onBindViewHolder(holder: RowSocialaccountlinkVH, position: Int) {
    val socialaccountlinkRowModel = SocialaccountlinkRowModel()
    // TODO uncomment following line after integration with data source
    // val socialaccountlinkRowModel = list[position]
    holder.binding.socialaccountlinkRowModel = socialaccountlinkRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SocialaccountlinkRowModel>) {
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
      item: SocialaccountlinkRowModel
    ) {
    }
  }

  inner class RowSocialaccountlinkVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSocialaccountlinkBinding = RowSocialaccountlinkBinding.bind(itemView)
  }
}
