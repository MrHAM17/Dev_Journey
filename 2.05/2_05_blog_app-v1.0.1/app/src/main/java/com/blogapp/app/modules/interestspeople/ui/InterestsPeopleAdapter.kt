package com.blogapp.app.modules.interestspeople.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.blogapp.app.R
import com.blogapp.app.databinding.RowInterestspeopleBinding
import com.blogapp.app.modules.interestspeople.`data`.model.InterestspeopleRowModel
import kotlin.Int
import kotlin.collections.List

class InterestsPeopleAdapter(
  var list: List<InterestspeopleRowModel>
) : RecyclerView.Adapter<InterestsPeopleAdapter.RowInterestspeopleVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowInterestspeopleVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_interestspeople,parent,false)
    return RowInterestspeopleVH(view)
  }

  override fun onBindViewHolder(holder: RowInterestspeopleVH, position: Int) {
    val interestspeopleRowModel = InterestspeopleRowModel()
    // TODO uncomment following line after integration with data source
    // val interestspeopleRowModel = list[position]
    holder.binding.interestspeopleRowModel = interestspeopleRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<InterestspeopleRowModel>) {
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
      item: InterestspeopleRowModel
    ) {
    }
  }

  inner class RowInterestspeopleVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowInterestspeopleBinding = RowInterestspeopleBinding.bind(itemView)
  }
}
