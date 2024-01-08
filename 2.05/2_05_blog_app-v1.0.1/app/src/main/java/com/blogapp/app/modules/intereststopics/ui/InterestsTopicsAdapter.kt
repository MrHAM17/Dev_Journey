package com.blogapp.app.modules.intereststopics.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.blogapp.app.R
import com.blogapp.app.databinding.RowIntereststopicsBinding
import com.blogapp.app.modules.intereststopics.`data`.model.IntereststopicsRowModel
import kotlin.Int
import kotlin.collections.List

class InterestsTopicsAdapter(
  var list: List<IntereststopicsRowModel>
) : RecyclerView.Adapter<InterestsTopicsAdapter.RowIntereststopicsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowIntereststopicsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_intereststopics,parent,false)
    return RowIntereststopicsVH(view)
  }

  override fun onBindViewHolder(holder: RowIntereststopicsVH, position: Int) {
    val intereststopicsRowModel = IntereststopicsRowModel()
    // TODO uncomment following line after integration with data source
    // val intereststopicsRowModel = list[position]
    holder.binding.intereststopicsRowModel = intereststopicsRowModel
  }

  override fun getItemCount(): Int = 10
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<IntereststopicsRowModel>) {
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
      item: IntereststopicsRowModel
    ) {
    }
  }

  inner class RowIntereststopicsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowIntereststopicsBinding = RowIntereststopicsBinding.bind(itemView)
    init {
      binding.btnFollow.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, IntereststopicsRowModel())
      }
    }
  }
}
